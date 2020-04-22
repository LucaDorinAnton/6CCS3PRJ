package buildtools.assembler

object YAMLParser {
  import net.jcazevedo.moultingyaml._
  import scala.io.Source

  case class Step(signals: Seq[String], description: String)
  case class Instruction(name: String, opcode: Int, description: String, requires_operand: Boolean, flags: Map[String, Seq[Step]])
  case class ISA(instructions: Seq[Instruction])
  object ISAYamlProtocol extends DefaultYamlProtocol {
    implicit val stepFormat = yamlFormat2(Step)
    implicit val instructionFormat = yamlFormat5(Instruction)
    implicit val isaFormat = yamlFormat1(ISA)
  }

  import ISAYamlProtocol._

  def parseYamlISA(yamlText: String) : (ISA, List[String], Map[String, Instruction]) = {
    val isaYaml = yamlText.stripMargin.parseYaml.convertTo[ISA]

    val instr_names : List[String] = isaYaml.instructions.map(i => i.name).toList
    val instr_map : Map[String, Instruction] = instr_names.map(
      name => name -> isaYaml.instructions.find(i => i.name == name).getOrElse(isaYaml.instructions.head))
      .toMap
    (isaYaml, instr_names, instr_map)
  }
}
