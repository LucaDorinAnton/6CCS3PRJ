// Coursework 4 - Luca-Dorin Anton - 6CCS3CFL

//  Based on Dr Christian Urban's comb2.scala, compile.scala  and my cw3 implementation and

// A parser and compiler for the While language

package buildtools.compiler


object ParsePiler {


  import scala.language.implicitConversions
  import scala.language.reflectiveCalls


  // more convenience for the semantic actions later on
  case class ~[+A, +B](_1: A, _2: B)


  type IsSeq[A] = A => Seq[_]

  abstract class Parser[I : IsSeq, T] {
    def parse(ts: I): Set[(T, I)]

  def parse_all(ts: I) : Set[T] =
    for ((head, tail) <- parse(ts); if tail.isEmpty) yield head
  }

  class SeqParser[I : IsSeq, T, S](p: => Parser[I, T], q: => Parser[I, S]) extends Parser[I, ~[T, S]] {
    def parse(sb: I) =
      for ((head1, tail1) <- p.parse(sb);
      (head2, tail2) <- q.parse(tail1)) yield (new ~(head1, head2), tail2)
  }

  class AltParser[I : IsSeq, T](p: => Parser[I, T], q: => Parser[I, T]) extends Parser[I, T] {
    def parse(sb: I) = p.parse(sb) ++ q.parse(sb)
  }

  class FunParser[I : IsSeq, T, S](p: => Parser[I, T], f: T => S) extends Parser[I, S] {
    def parse(sb: I) =
      for ((head, tail) <- p.parse(sb)) yield (f(head), tail)
  }

  case class Tok1Parser(s: String) extends Parser[List[(String, String)], (String, String)] {
    def parse(toks: List[(String, String)]) = toks match{
      case (s, x)::tail => Set(((s, x), tail))
      case _ => Set()
    }
  }

  case class Tok2Parser(tok: (String, String)) extends Parser[List[(String, String)], (String, String)] {
    def parse(toks: List[(String, String)]) = toks match{
      case (tok._1, tok._2)::tail => Set((tok, tail))
      case _ => Set()
    }
  }

  case object NumParser extends Parser[List[(String, String)], Int] {
    def parse(tks: List[(String, String)]) = tks match {
      case ("n", nr)::tail => Set((nr.toInt, tail))
      case _ => Set()
    }
  }

  case object IdParser extends Parser[List[(String, String)], String] {
    def parse(tks: List[(String, String)]) = tks match {
      case ("id", id)::tail => Set((id, tail))
      case _ => Set()
      }
  }


  implicit def string2parser(s : String) = Tok1Parser(s)

  implicit def tuple2parser(tok: (String, String)) = Tok2Parser(tok)

  implicit def ParserOps[I : IsSeq, T](p: Parser[I, T]) = new {
    def ||(q : => Parser[I, T]) = new AltParser[I, T](p, q)
    def ==>[S] (f: => T => S) = new FunParser[I, T, S](p, f)
    def ~[S](q : => Parser[I, S]) = new SeqParser[I, T, S](p, q)
  }

  implicit def StringOps(tok: (String, String)) = new {
    def ||(q : => Parser[List[(String, String)], (String, String)]) = new AltParser[List[(String, String)], (String, String)](tok, q)
    def ||(r: String) = new AltParser[List[(String, String)], (String, String)](tok, r)
    def ==>[S] (f: => ((String, String)) => S) = new FunParser[List[(String, String)], (String, String), S](tok, f)
    def ~[S](q : => Parser[List[(String, String)], S]) =
      new SeqParser[List[(String, String)], (String, String), S](tok, q)
    def ~(r: String) =
      new SeqParser[List[(String, String)], (String, String), (String, String)](tok, r)
  }


  // the abstract syntax trees for the WHILE language
  abstract class Stmt
  abstract class AExp
  abstract class BExp

  type Block = List[Stmt]

  case object Skip extends Stmt
  case class If(a: BExp, bl1: Block, bl2: Block) extends Stmt
  case class While(b: BExp, bl: Block) extends Stmt
  case class Assign(s: String, a: AExp) extends Stmt
  case class WriteAExp(a: AExp) extends Stmt
  case class Read(s: String) extends Stmt


  case class Var(s: String) extends AExp
  case class Num(i: Int) extends AExp
  case class Aop(o: String, a1: AExp, a2: AExp) extends AExp

  case object True extends BExp
  case object False extends BExp
  case class Bop(o: String, a1: AExp, a2: AExp) extends BExp


  // arithmetic expressions
  lazy val AExp: Parser[List[(String, String)], AExp] =
    (Te ~ ("op", "+") ~ AExp) ==> { case x ~ _ ~ z => Aop("+", x, z): AExp } ||
    (Te ~ ("op", "-") ~ AExp) ==> { case x ~ _ ~ z => Aop("-", x, z): AExp } || Te
  lazy val Te: Parser[List[(String, String)], AExp] =
    (Fa ~ ("op", "*") ~ Te) ==> { case x ~ _ ~ z => Aop("*", x, z): AExp } || Fa
  lazy val Fa: Parser[List[(String, String)], AExp] =
    (("p", "(") ~ AExp ~ ("p", ")")) ==> { case _ ~ y ~ _ => y } ||
    IdParser ==> Var || NumParser ==> Num

  // boolean expressions with some simple nesting
  lazy val BExp: Parser[List[(String, String)], BExp] =
    (AExp ~ ("op", "==") ~ AExp) ==> { case x ~ _ ~ z => Bop("==", x, z): BExp } ||
    (AExp ~ ("op", "!=") ~ AExp) ==> { case x ~ _ ~ z => Bop("!=", x, z): BExp } ||
    (AExp ~ ("op", "<") ~ AExp) ==> { case x ~ _ ~ z => Bop("<", x, z): BExp } ||
    (AExp ~ ("op", ">") ~ AExp) ==> { case x ~ _ ~ z => Bop(">", x, z): BExp } ||
    (AExp ~ ("op", "<=") ~ AExp) ==> {case x ~ _ ~ z => Bop("<=", x, z): BExp} ||
    (AExp ~ ("op", ">=") ~ AExp) ==> {case x ~ _ ~ z => Bop(">=", x, z): BExp} ||
    (("k", "true") ==> (_ => True: BExp )) ||
    (("k", "false") ==> (_ => False: BExp )) ||
    (("p", "(") ~ BExp ~ ("p", ")")) ==> { case _ ~ x ~ _ => x }

  // statement / statements
  lazy val Stmt: Parser[List[(String, String)], Stmt] =
    ((("k", "skip") ==> (_ => Skip: Stmt)) ||
    (IdParser ~ ("op", ":=") ~ AExp) ==> { case x ~ _ ~ z => Assign(x, z): Stmt } ||
    (("k", "write") ~ AExp) ==> { case _ ~ y => WriteAExp(y): Stmt } ||
    (("k", "read") ~ IdParser) ==> { case _ ~ y => Read(y): Stmt } ||
    (("k", "if") ~ BExp ~ ("k", "then") ~ Block ~ ("k", "else") ~ Block) ==>
    { case _ ~ y ~ _ ~ u ~ _ ~ w => If(y, u, w): Stmt } ||
    (("k", "while") ~ BExp ~ ("k", "do") ~ Block) ==> { case _ ~ y ~ _ ~ w => While(y, w) })

  lazy val Stmts: Parser[List[(String, String)], Block] =
    (Stmt ~ ("s", ";") ~ Stmts) ==> { case x ~ _ ~ z => x :: z : Block } ||
    (Stmt ==> ( s => List(s) : Block))

  // blocks (enclosed in curly braces)
  lazy val Block: Parser[List[(String, String)], Block] =
    ((("p", "{") ~ Stmts ~ ("p", "}")) ==> { case _ ~ y ~ _ => y } ||
    (Stmt ==> (s => List(s) : Block)))



  // |------------------- A Compiler for the While language //

  val OPSPACE = "0x3EF"

  val VARS_BASE = 512

  val CONSTANTS = i"MAXINT = 0x3EE"

  val DATA = l"data" ++ i"MAXINT = 0xFFFF"

  val beggining = CONSTANTS ++ DATA

  val ending = i"# Compiled assembly for the 16-bit breadboard computer"

  // Compiler functions


  // for generating new labels
  var counter = 0

  def Fresh(x: String) = {
    val res =   x ++ "_" ++ counter.toString()
    counter += 1
  }


  implicit def string_inters(sc: StringContext) = new {
    def i(args: Any*): String = "   " ++ sc.s(args:_*) ++ "\n"
    def l(args: Any*): String = sc.s(args:_*) ++ ":\n"
  }

  // this allows you to write things like
  // i"add" and l"Label"

  def compile_op(op: String) : String = op match {
    case "+" => i"ADD"
    case "-" => i"SUB"
    case "*" => {
      val start = Fresh("START")
      val done = Fresh("DONE")
      i"MAS" ++
      i"LAI 0" ++
      l"$done" ++
      i"MAC" ++
      i"MBA" ++
      i"LBI 0" ++
      i"ADD" ++
      i"BRZ $done" ++
      i"LBI 1" ++
      i"SUB" ++
      i"MAB" ++
      i"MCA" ++
      i"MBC" ++
      i"MSB" ++
      i"ADD" ++
      i"MCB" ++
      i"JMP $start" ++
      l"$done" ++
      i"MCA"
    }
  }

  // environments
  type Env = Map[String, Int]

  // arithmetic expression compilation
    def compile_aexp(a: AExp, env : Env) : String = a match {
      case Num(i) => i"LAI 0d$i"
      case Var(s) => i"LDA $s"
      case Aop(op, a1, a2) => compile_aexp(a2) ++ i"STA $OPSPACE" ++ compile_aexp(a1)
        ++ i"LDB $OPSPACE" ++ compile_op(op)
    }

  // boolean expression compilation
  //  - the jump-label is for where to jump if the condition is not true
  def compile_bexp(b: BExp, env : Env, jmp: String) : String = b match {
    case True => ""
    case False => i"JMP $jmp"
    case Bop("==", a1, a2) =>
      compile_aexp(a2, env) ++
      i"STA $OPSPACE" ++
      compile_aexp(a1, env) ++
      i"LDB $OPSPACE" ++
      i"SUB" ++
      i"LDB MAXINT" ++
      i"ADD" ++
      i"BRC $jmp"
    case Bop("!=", a1, a2) =>
      compile_aexp(a2, env) ++
      i"STA $OPSPACE" ++
      compile_aexp(a1, env) ++
      i"LDB $OPSPACE" ++
      i"SUB" ++
      i"BRZ $jmp"
    case Bop("<", a1, a2) =>
      compile_aexp(a2, env) ++
      i"STA $OPSPACE" ++
      compile_aexp(a1, env) ++
      i"LDB $OPSPACE" ++
      i"SUB" ++
      i"BRC $jmp"
    case Bop("<=", a1, a2) =>
      compile_aexp(a2, env) ++
      i"LBI 1" ++
      i"ADD" ++
      i"STA $OPSPACE" ++
      compile_aexp(a2, env) ++
      i"LDB $OPSPACE" ++
      i"SUB" ++
      i"BRC $jmp"
    case Bop(">", a1, a2) =>
      compile_aexp(a1, env) ++
      i"STA $OPSPACE" ++
      compile_aexp(a2, env) ++
      i"LDB $OPSPACE" ++
      i"SUB" ++
      i"BRC $jmp"
    case Bop(">=", a1, a2) =>
      compile_aexp(a1, env) ++
      i"LBI 1" ++
      i"ADD" ++
      i"STA $OPSPACE" ++
      compile_aexp(a2, env) ++
      i"LDB $OPSPACE" ++
      i"BRC $jmp"
  }

  // statement compilation
  def compile_stmt(s: Stmt, env: Env) : (String, Env) = s match {
    case Skip => (i"NOP", env)
    case Assign(x, a) => {
      val index = env.getOrElse(x, env.keys.size)
      (compile_aexp(a, env) ++ i"STA ${VARS_BASE + index}", env + (x -> index))
    }
    case If(b, bl1, bl2) => {
      val if_else = Fresh("If_else")
      val if_end = Fresh("If_end")
      val (instrs1, env1) = compile_block(bl1, env)
      val (instrs2, env2) = compile_block(bl2, env1)
      (compile_bexp(b, env, if_else) ++
      instrs1 ++
      i"JMP $if_end" ++
      l"$if_else" ++
      instrs2 ++
      l"$if_end" ++
      i"NOP", env2)
    }
    case While(b, bl) => {
      val loop_begin = Fresh("Loop_begin")
      val loop_end = Fresh("Loop_end")
      val (instrs1, env1) = compile_block(bl, env)
      (l"$loop_begin" ++
        compile_bexp(b, env, loop_end) ++
        instrs1 ++
        i"JMP $loop_begin" ++
        l"$loop_end" ++
        i"NOP", env1)
      }
    case WriteAExp(x) => {
      val instr = compile_aexp(x, env)
      ( instr ++ "IWA", env)
    }
    case Read(x) => {
      val index = env.getOrElse(x, env.keys.size)
      (i"IRA" ++
        i"STA ${VARS_BASE + index}", env + (x -> index))
    }
  }

  // compilation of a block (i.e. list of instructions)
  def compile_block(bl: Block, env: Env) : (String, Env) = bl match {
    case Nil => ("", env)
    case s::bl => {
      val (instrs1, env1) = compile_stmt(s, env)
      val (instrs2, env2) = compile_block(bl, env1)
      (instrs1 ++ instrs2, env2)
    }
  }

  // main compilation function for blocks
  def compile(bl: Block) : String = {
    val instructions = compile_block(bl, Map.empty)._1
    (beginning ++ l"main" ++ instructions ++ ending)
  }

  def time[R](block: => R): R = {
    val t0 = System.nanoTime()
    val result = block    // call-by-name
    val t1 = System.nanoTime()
    println("Elapsed time: " + (t1 - t0) + "ns, " + ((t1 - t0)/1000000) + "ms, " + (((t1 - t0)/1000000)/1000) + "seconds.")
    result
  }

}
