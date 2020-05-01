package buildtools.compiler

// Based on the 6CCS3CFL coursework, taught by Dr. Christian Urban
// Based on regular expression derivatives

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

// Constants
  val OPSPACE = "0x3EF"

  val VARS_BASE = 512

  val CONSTANTS = i"MAXINT = 0x3EE" ++
                  i"DISPLAY_WORD = 0x3ED"

  val CHARS = """
  C0 = 0x200
  C1 = 0x201
  C2 = 0x202
  C3 = 0x203

  C4 = 0x204
  C5 = 0x205
  C6 = 0x206
  C7 = 0x207

  C8 = 0x208
  C9 = 0x209
  CA = 0x20A
  CB = 0x20B

  CC = 0x20C
  CD = 0x20D
  CE = 0x20E
  CF = 0x20F
  CX = 0x210

  FS = 0x21C
  CLEAR = 0x21D
  ON = 0x21E
  NEWLINE = 0x21F
  """

  val DATA = l"data" ++
            i"MAXINT set 0xFFFF" ++
            i"DISPLAY_WORD set 0x0" ++
"""
  C0 set 0b100110000
  C1 set 0b100110001
  C2 set 0b100110010
  C3 set 0b100110011
  C4 set 0b100110100
  C5 set 0b100110101
  C6 set 0b100110110
  C7 set 0b100110111
  C8 set 0b100111000
  C9 set 0b100111001
  CA set 0b101000001
  CB set 0b101000010
  CC set 0b101000011
  CD set 0b101000100
  CE set 0b101000101
  CF set 0b101000110
  CX set 0b101111000
  FS set 0b000111000
  CLEAR set 0b000000001
  ON set 0b000001111
  NEWLINE set 0b011000000
"""

  val init_display = l"init_display" ++
                      i"DWR FS" ++
                      i"DWR CLEAR" ++
                      i"DWR ON" ++
                      i"RET"

  val display_word = l"display_word" ++
                    i"JSR init_display" ++
                    i"DWR C0" ++
                    i"DWR CX" ++
                    i"LDS DISPLAY_WORD" ++
                    i"LAI 1" ++
                    i"JSR display_nibble" ++
                    i"LDS DISPLAY_WORD" ++
                    i"LAI 5" ++
                    i"JSR display_nibble" ++
                    i"LDS DISPLAY_WORD" ++
                    i"LAI 9" ++
                    i"JSR display_nibble" ++
                    i"LDS DISPLAY_WORD" ++
                    i"LAI 13" ++
                    i"JSR display_nibble" ++
                    i"RET"

  val display_nibble = l"display_nibble" ++
                      i"LBI 1" ++
                      i"JSR shift_left" ++
                      i"LAI 13" ++
                      i"LBI 1" ++
                      i"JSR shift_right" ++
                      i"JSR display_s_p" ++
                      i"RET"

  val shift_left = l"shift_left" ++
                  i"SUB" ++
                  i"BRZ done" ++
                  i"SFL" ++
                  i"JMP shift_left"

  val shift_right = l"shift_right" ++
                    i"SUB" ++
                    i"BRZ done" ++
                    i"SFR" ++
                    i"JMP shift_right"

  val done = l"done" ++
              i"RET"

  val display_s_p = l"display_s_p" ++
                    i"MSB" ++
                    i"LAI 0x200" ++
                    i"ADD" ++
                    i"LAP" ++
                    i"DWA" ++
                    i"RET"

  val beginning = CONSTANTS ++ CHARS ++ DATA ++
                  init_display ++
                  display_word ++
                  display_nibble ++
                  shift_left ++
                  shift_right ++
                  done ++
                  display_s_p



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
      (i"JMP $loop_begin" ++
        l"$loop_begin" ++
        compile_bexp(b, env, loop_end) ++
        instrs1 ++
        i"JMP $loop_begin" ++
        l"$loop_end" ++
        i"NOP", env1)
      }
    case WriteAExp(x) => {
      val instr = compile_aexp(x, env)
      ( instr ++ i"STA DISPLAY_WORD" ++ i"JSR display_word", env)
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
