package buildtools.compiler
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
    val SYM = RANGE(('A' to 'Z').toSet ++ ('a' to 'z').toSet ++ ('0' to '9').toSet ++ Set('_'))

    val NOT_QUOTES = CFUN(_ != '"')
    val NOT_NEWLINES = CFUN(_ != '\n')

    val KEYWORD : Rexp =  "while" | "if" | "then" | "else" | "do" | "true" | "false" | "read" | "write" | "skip"
    val OP: Rexp = "+" | "-" | "*" | "==" | "!=" | ">" | ">=" | "<" | "<=" | ":="
    val PARA: Rexp = "{" | "}" | "(" | ")"
    val SEMI: Rexp = ";"
    val WHITESPACE = PLUS(" " | "\n" | "\t" | "\r")
    val ID = SYM ~ (SYM | ZERO_DIGITS).%
    val NUM = "0" | ONE_DIGITS ~ STAR(ZERO_DIGITS)
    val COMM : Rexp = "//" ~ STAR(NOT_NEWLINES) ~ "\n" //in-line comments


    val WHILE_REGS = (("k" $ KEYWORD) |
    ("op" $ OP)     |
    ("p" $ PARA)    |
    ("s" $ SEMI)    |
    ("w" $ WHITESPACE) |
    ("n" $ NUM)     |
    ("id" $ ID)     |
    ("c" $ COMM)).%


    // Remove comments and whitespace from the token List
    def sanitize(tks: List[(String, String)]) : List[(String, String)]= tks match {
      case Nil => Nil
      case t::ts => t match {
        case ("w", _) => sanitize(ts)
        case ("c", _) => sanitize(ts)
        case _ => t::sanitize(ts)
      }
    }

    def lex_while(s: String) : List[(String, String)] =
      sanitize(LexerCore.lexing_simp(WHILE_REGS, s))

  }
