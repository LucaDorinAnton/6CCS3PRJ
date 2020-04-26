package buildtools.assembler

// Builds assmelby file into binaries

object Assembler extends App {

  import buildtools.assembler.{Lexer, YAMLParser}
  import scala.io.Source
  import java.io.BufferedOutputStream
  import java.io.FileOutputStream

// constants
  val MAIN_BASE = 0
  val DATA_BASE = 512
  val MEM_SIZE = 1024

  type Env = Map[String, Int]


  def format_binary_string(nr: Int, length: Int) =
    ("0" * (length - nr.toBinaryString.length)) + nr.toBinaryString

  def make_bin_str2(nr1: Int, nr2: Int = 0) =
      format_binary_string(nr1, 6) + format_binary_string(nr2, 10)

// parse an operator into an int
  def parse_ope(ope: String): Int = ope.toList match {
    case '0'::'b'::res => Integer.parseInt(res.mkString, 2)
    case '0'::'x'::res => Integer.parseInt(res.mkString, 16)
    case '0'::'d'::res => Integer.parseInt(res.mkString, 10)
    case _ => Integer.parseInt(ope, 10)
  }

// parse aliases
  def create_env(tks: List[(String, String)],
                 env:Env = Map(),
                 processed: List[(String, String)] = Nil)
                : (List[(String, String)], Map[String, Int]) = tks match {
    case Nil => (processed, env)
    case ("id", a)::("ops", "=")::("ope", b)::rest =>
                 create_env(rest, env + (a -> parse_ope(b)), processed)
    case a::rest => create_env(rest, env, processed:+a)
    }

// oreder subroutines
  def get_sub_order(tks: List[(String, String)], res: List[String] = Nil) : List[String] = tks match{
    case Nil => res
    case ("id", a)::("ops", ":")::rest => get_sub_order(rest, res:+a)
    case _::rest => get_sub_order(rest, res)
  }

  def separate_subroutines(tks: List[(String, String)],
                          subroutines: Map[String, List[(String, String)]] = Map(),
                          label: String= "") : Map[String, List[(String, String)]] = tks match {
    case Nil => subroutines
    case ("id", a)::("ops", ":")::rest => separate_subroutines(rest, subroutines, a)
    case a::rest => separate_subroutines(rest, subroutines +
                    (label -> (subroutines.getOrElse(label, Nil) :+ a)), label)
  }

// count subroutine instructions. Used to determine the value for each subroutine lable
  def cnt_subroutine_instr(tks: List[(String, String)], acc: Int=0) : Int = tks match {
    case Nil => acc
    case ("ins", _)::rest => cnt_subroutine_instr(rest, acc + 1)
    case _::rest => cnt_subroutine_instr(rest, acc)
  }

// Determine subroutine labels
  def solve_references_rec(keys: List[String], subroutines: Map[String, Int],
                          env: Env, base: Int) : Map[String, Int] = keys match {
        case Nil => env
        case s::rest => solve_references_rec(rest, subroutines, env + (s -> base), base + subroutines.get(s).get)
      }

  def solve_references(subroutines: Map[String, Int],
                       env: Env,
                       keys: List[String]) : Map[String, Int] = {
      subroutines.getOrElse("main", throw new Exception("No main section defined!"))
      val base = 0
      val env1 = env + ("main" -> base)
      val base1 = base + subroutines.get("main").get
      solve_references_rec(keys, subroutines, env1, base1)
  }

// Turn a subroutine into a map from address to binary value as a string
  def process_subroutine(tks: List[(String, String)], name: String, base: Int,
                         env: Env,
                         instrs: Map[String, YAMLParser.Instruction],
                         res: Map[Int, String] = Map()) : Map[Int, String] = name match {
      case "data" => tks match {
        case Nil => res
        case ("ope", a)::("ops", "set")::("ope", b)::rest => {
          val a_val = parse_ope(a)
          val b_val = parse_ope(b)
          if(a_val < 512 || a_val > 1007) throw new Exception("Cannot define data outside of data memory page!")
          process_subroutine(rest, name, base, env, instrs, res + (a_val -> format_binary_string(b_val, 16)))
        }
        case ("ope", a)::("ops", "set")::("id", id)::rest => {
          val a_val = parse_ope(a)
          val b_val = env.get(id).get
          if(a_val < 512 || a_val > 1007) throw new Exception("Cannot define data outside of data memory page!")
          process_subroutine(rest, name, base, env, instrs, res + (a_val -> format_binary_string(b_val, 16)))
        }
        case ("id", id)::("ops", "set")::("ope", b)::rest => {
          val a_val = env.get(id).get
          val b_val = parse_ope(b)
          if(a_val < 512 || a_val > 1007) throw new Exception("Cannot define data outside of data memory page!")
          process_subroutine(rest, name, base, env, instrs, res + (a_val -> format_binary_string(b_val, 16)))
        }
        case ("id", id1)::("ops", "set")::("id", id2)::rest => {
          val a_val = env.get(id1).get
          val b_val = env.get(id2).get
          if(a_val < 512 || a_val > 1007) throw new Exception("Cannot define data outside of data memory page!")
          process_subroutine(rest, name, base, env, instrs, res + (a_val -> format_binary_string(b_val, 16)))
        }
        case a => throw new Exception("Instructions are not allowed in the data section!" + a)
      }
      case _ => tks match {
          case Nil => res
          case ("ins", a)::("id", b)::rest => try {
            process_subroutine(rest, name, base + 1, env, instrs,
              res + (base -> make_bin_str2(instrs.get(a).get.opcode, env.get(b).get)))
          } catch {
            case e: Exception => {
              println(a, " ", b)
              println(instrs.get(a))
              println(env.get(b))
              println(env)
              throw e
            }
          }
          case ("ins", a)::("ope", b)::rest => process_subroutine(rest, name, base + 1, env, instrs,
                                                res + (base -> make_bin_str2(instrs.get(a).get.opcode, parse_ope(b))))
          case ("ins", a)::rest => if(!instrs.get(a).get.requires_operand) process_subroutine(rest, name, base + 1,
                                      env, instrs, res + (base -> make_bin_str2(instrs.get(a).get.opcode))) else
                                      throw new Exception("Missing operand for " + a)
      }

    }

  def process_subroutines_rec(keys: List[String],
                              subroutines: Map[String, List[(String, String)]],
                              env: Env,
                              instr_map: Map[String, YAMLParser.Instruction],
                              res: List[Map[Int, String]] = Nil) : List[Map[Int, String]] = keys match{
    case Nil => res
    case n::rest => {
      val res_n = process_subroutine(subroutines.get(n).get, n, env.get(n).get, env, instr_map)
      process_subroutines_rec(rest, subroutines, env, instr_map, res:+res_n)
    }

                              }

  def merge_maps_rec(acc: Map[Int, String] = Map(), maps: List[Map[Int, String]]) : Map[Int, String] = maps match {
    case Nil => acc
    case m::rest => merge_maps_rec(acc ++ m, rest)
  }

  def process_subroutines(subroutines: Map[String, List[(String, String)]],
                          env: Env,
                          instr_map: Map[String, YAMLParser.Instruction]
                        ) : Map[Int, String] = {
    val main = process_subroutine(subroutines.get("main").get, "main", MAIN_BASE, env, instr_map)
    val data = process_subroutine(subroutines.getOrElse("data", Nil), "data", DATA_BASE, env, instr_map)
    val rest = subroutines.keys.toList.filter({case n => n != "main" && n != "data"})
    val result_rest = process_subroutines_rec(rest, subroutines, env, instr_map)

    val final_res : Map[Int, String] = main ++ data
    merge_maps_rec(final_res, result_rest)
    }

  // Turn the string binary data into bytes
  def createByteList(map: Map[Int, String], acc: List[Byte]=Nil, i: Int=0) : List[Byte] = {
    if(i >= 1024) acc else {
      val data_word = map.getOrElse(i, "0" * 16)
      if(data_word.length != 16) throw new Exception("Invalid data word: " + data_word + " " + i)
      val byte1 = Integer.parseInt(data_word.slice(0, 8), 2).toByte
      val byte2 = Integer.parseInt(data_word.slice(8, 16), 2).toByte
      createByteList(map, acc ::: List(byte1, byte2), i + 1)
    }
  }

  def assemble(asm_text : String, isa_text : String) : List[Byte] = {
    print("Trying to parse YAML text... ")
    val yaml_obj = YAMLParser.parseYamlISA(isa_text)
    println("Done.")

    print("Trying to lex assembly source... ")
    val tks = Lexer.lex_assembly_based_on_isa(asm_text, yaml_obj._2)
    println("Done.")

    print("Extracting aliases... ")
    val env_init = create_env(tks)
    println("Done.")

    print("Ordering subroutines... ")
    val sub_order = get_sub_order(env_init._1)
    val sub_order_1 = sub_order.filter({case n => n != "data" && n != "main"})
    println("Done")

    print("Extracting subroutines... ")
    val subroutines = separate_subroutines(env_init._1)
    println("Done.")

    print("Counting subroutine instructions... ")
    val subroutine_cnt_map = subroutines map {case (name, lst) => (name -> cnt_subroutine_instr(lst))}
    println("Done.")

    print("Solving references... ")
    val env = solve_references(subroutine_cnt_map, env_init._2, sub_order_1)
    println("Done.")

    print("Decoding Instructions... ")
    val final_res = process_subroutines(subroutines, env, yaml_obj._3)
    println("Done.")

    print("Generating byte array... ")
    val bytes = createByteList(final_res)
    println("Done.")
    bytes
  }
}
