package buildtools.assembler
// Based on the 6CCS3CFL coursework, taught by Dr. Christian Urban
// Based on regular expression derivatives

// type definitions for all lexers
object RegexDef {
  abstract class Rexp
  case object ZERO extends Rexp
  case object ONE extends Rexp
  case class CFUN(f : Char => Boolean) extends Rexp
  case class ALT(r1: Rexp, r2: Rexp) extends Rexp
  case class SEQ(r1: Rexp, r2: Rexp) extends Rexp
  case class STAR(r: Rexp) extends Rexp
  case class PLUS(r: Rexp) extends Rexp
  case class OPTIONAL(r: Rexp) extends Rexp
  case class NTIMES(r: Rexp, n: Int) extends Rexp
  case class RECD(x: String, r: Rexp) extends Rexp

  def Character(c: Char) = CFUN(_ == c)
  def RANGE(cs: Set[Char]) = CFUN(cs.contains(_))
  def ALL = CFUN(_ => true)


}
