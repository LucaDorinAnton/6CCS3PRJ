// Coursework 4 - Luca-Dorin Anton - 6CCS3CFL

//  Based on Dr Christian Urban's comb2.scala, compile.scala  and my cw3 implementation and

// A parser and compiler for the While language

package buildtools.compiler


object Compiler {


  import scala.language.implicitConversions
  import scala.language.reflectiveCalls

  // Abstract Syntax Trees for the WHILE Language
  import buildtools.compiler.AST._

  // environments
  type Env = Map[String, Int]

  // for generating new labels
  var counter = 0

  def Fresh(x: String) : String = {
    val res =   x ++ "_" ++ counter.toString()
    counter += 1
    res
  }
  // this allows you to write things like
  // i"add" and l"Label"
  implicit def string_inters(sc: StringContext) = new {
    def i(args: Any*): String = "   " ++ sc.s(args:_*) ++ "\n"
    def l(args: Any*): String = sc.s(args:_*) ++ ":\n"
  }

  val OPSPACE = "0x3EF"

  val VARS_BASE = 512

  val CONSTANTS = i"MAXINT = 0x3EE"

  val DATA = l"data" ++ i"MAXINT = 0xFFFF"

  val beginning = CONSTANTS ++ DATA

  val ending = i"\n# Compiled assembly for the 16-bit breadboard computer"

  // Compiler functions

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



  // arithmetic expression compilation
    def compile_aexp(a: AExp, env : Env) : String = a match {
      case Num(i) => i"LAI 0d$i"
      case Var(s) => {
        val index = env.get(s).get
        i"LDA ${VARS_BASE + index}"
      }
      case Aop(op, a1, a2) => compile_aexp(a2, env) ++ i"STA $OPSPACE" ++
                              compile_aexp(a1, env) ++ i"LDB $OPSPACE" ++ compile_op(op)
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
      ( instr ++ i"IWA", env)
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
}
