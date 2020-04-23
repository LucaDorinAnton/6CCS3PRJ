package buildtools.compiler
// Based on the 6CCS3CFL coursework, taught by Dr. Christian Urban
// Based on parser combinators
object Parser {


    import scala.language.implicitConversions
    import scala.language.reflectiveCalls

    // Abstract Syntax Trees for the WHILE Language
    import buildtools.compiler.AST._


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

    // While Grammar definitions using Parser Combinators

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

    def parse(tks: List[(String, String)]) : Block =
        Stmts.parse_all(tks).head

}
