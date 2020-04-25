package buildtools.assembler

// Based on the 6CCS3CFL coursework, taught by Dr. Christian Urban
// Based on regular expression derivatives

object Lexer {
  import buildtools.assembler.LexerCore
  import buildtools.assembler.RegexDef._

// Convenience functions
  implicit def string2rexp(s : String) : Rexp =
    charlist2rexp(s.toList)

    implicit def RexpOps(r: Rexp) = new {
      def | (s: Rexp) = ALT(r, s)
      def % = STAR(r)
      def ~ (s: Rexp) = SEQ(r, s)
      def + = PLUS(r)
      def ? = OPTIONAL(r)
      def ^ (n: Int) = NTIMES(r, n)
    }

    implicit def stringOps(s: String) = new {
      def | (r: Rexp) = ALT(s, r)
      def | (r: String) = ALT(s, r)
      def % = STAR(s)
      def ~ (r: Rexp) = SEQ(s, r)
      def ~ (r: String) = SEQ(s, r)
      def + = PLUS(s)
      def ? = OPTIONAL(s)
      def ^ (n: Int) = NTIMES(s, n)
      def $ (r: Rexp) = RECD(s, r)
    }


  def charlist2rexp(s : List[Char]): Rexp = s match {
    case Nil => ONE
    case c::Nil => Character(c)
    case c::s => SEQ(Character(c), charlist2rexp(s))
  }


              val UPPER = RANGE(('A' to 'Z').toSet)
              val LOWER = RANGE(('a' to 'z').toSet)
              val ZERO_DIGITS = RANGE(('0' to '9').toSet)
              val ONE_DIGITS = RANGE(('1' to '9').toSet)
              val SYM = RANGE(('A' to 'Z').toSet ++ ('a' to 'z').toSet ++ Set('_'))

              val NOT_QUOTES = CFUN(_ != '"')
              val NOT_NEWLINES = CFUN(_ != '\n')

              val WHITESPACE = PLUS(" " | "\n" | "\t" | "\r")
              val ID = SYM ~ (SYM | ZERO_DIGITS).%
              val BINARY_NR = "0b" ~ PLUS("0" | "1")
              val HEX_NR = "0x" ~ PLUS(ZERO_DIGITS | RANGE(('a' to 'f').toSet) | RANGE(('A' to 'F').toSet))
              val DEC_NR = "0d" ~ PLUS(ZERO_DIGITS) | PLUS(ZERO_DIGITS)
              val OPERAND = BINARY_NR | HEX_NR | DEC_NR
              val COMMENT = "#" ~ STAR(NOT_NEWLINES)
              val OPS = ":" | "=" | "set"



    def strListToRexp(lst: List[String], r: Rexp = ZERO) : Rexp = {
      lst match {
        case Nil => r
        case name::rest => strListToRexp(rest, r | name)
      }
    }

    // Remove comments and whitespace from the token List
    def sanitize(tks: List[(String, String)]) : List[(String, String)]= tks match {
      case Nil => Nil
      case t::ts => t match {
        case ("whi", _) => sanitize(ts)
        case ("com", _) => sanitize(ts)
        case _ => t::sanitize(ts)
      }
    }

    def lex_assembly_based_on_isa(assembly_text: String, instr_names: List[String]) : List[(String, String)] = {
                val INSTRUCTIONS = strListToRexp(instr_names)

                val ASSEMBLER_REGS = (("ins" $ INSTRUCTIONS) |
                  ("ops" $ OPS) |
                  ("ope" $ OPERAND) |
                  ("com" $ COMMENT) |
                  ("whi" $ WHITESPACE) |
                  ("id" $ ID)).%

                  sanitize(LexerCore.lex(assembly_text, ASSEMBLER_REGS))
                }
            }
