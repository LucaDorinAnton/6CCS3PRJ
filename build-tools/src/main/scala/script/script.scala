  package buildtools.script

object CompAsm extends App{

  import buildtools.assembler.Assembler
  import buildtools.compiler.{Lexer, Parser, Compiler}


  import scala.io.Source
  import java.io.{BufferedOutputStream, FileOutputStream}
  import java.io.{PrintWriter, File}

  def write_bytes(bytes: List[Byte], filename: String) : Unit = {
      print("Writing bytes to file " + filename + " ... ")
      val stream = new BufferedOutputStream(new FileOutputStream(filename))
      stream.write(bytes.toArray)
      stream.close
      println("Done.")
  }

  def write_text(text: String, filename: String) : Unit = {
    print("Writing result to file " + filename + " ... ")
    val p = new PrintWriter(new File(filename))
    p.write(text)
    p.close()
    println("Done.")
  }

  def read_file(filename: String) : String = {
    print("Reading file " + filename + " ... ")
    val text = Source.fromFile(filename).mkString
    println("Done.")
    return text
  }


  def help() = {
    val s1 = "Compiler/Assembler for the 16-bit breadboard computer instrunction set\n" ++
             "  Built by Luca-Dorin Anton. This software contributes towards a degree\n" ++
             "  Usage:\n" ++
             "    scala CompAsm [-a/-c/-d] [.asm/.while file] [isa_file] [result_file] [dir] \n" ++
             "  Argument description:\n" ++
             "    -a/-c/-d: whether to assemble a binary or compile a while source to Assembly. If -c is chosen, a WHILE source will be compiled directly down to binaries\n" ++
             "    .asm/.while file: source assembly file. Should contain either some 16-bit computer assembly or some WHILE language source code\n" ++
             "    isa_file: YAML file containing the definitions of the instructions for the 16 bit computer Instruction Set\n" ++
             "    result_file: where to store the resulting binaries. This file will be truncated\n" ++
             "    [Optional] dir: Directory from which to read and write files. Relative to project root. If ommited, project root will be used"
    println(s1)
  }

  def time[R](block: => R): R = {
    val t0 = System.nanoTime()
    val result = block    // call-by-name
    val t1 = System.nanoTime()
    println("Elapsed time: " + (t1 - t0) + "ns, " + ((t1 - t0)/1000000) + "ms, " + (((t1 - t0)/1000000)/1000) + "seconds.")
    result
  }

  def check_args(dir : String) : Unit = {
    import java.io.FileNotFoundException
    import java.io.IOException
    if(args.length < 4) {
      println("Insufficient arguments")
      help()
      System.exit(1)
    }
    val mode = args(0).toLowerCase
    if(mode != "-a" && mode != "-c" && mode != "-d") {
      println("Please specifiy -a/-c/-d")
      help()
    }
    for(i <- 1 to 2) {
      try{
        Source.fromFile(dir + args(i)).mkString
      } catch {
        case e: FileNotFoundException => println("Couldn't find file " + args(i) + "\n" + help()); System.exit(1)
        case e: IOException => println("IOException while trying to open " + args(i) + "\n" + help()) ; System.exit(1)
        case e: Exception => println(e + "\n" + help()) ; System.exit(1)
      }
    }
  }
  def get_dir() : String = if (args.length > 4) args(4) + "/" else ""

  def main() : Unit = {
    val dir = get_dir()
    check_args(dir)
    val mode = args(0).toLowerCase
    val source = dir + args(1)
    val isa = dir + args(2)
    val target = dir + args(3)
    val source_text = read_file(source)
    val isa_text = read_file(isa)

    if (mode == "-a") {

      val bytes = Assembler.assemble(source_text, isa_text)
      write_bytes(bytes, target)
      println("Done! Assembly process successfull!")
    } else {

      print("Lexing source ...")
      val tks = Lexer.lex_while(source_text)
      println("Done.")

      print("Parsing tokens ...")
      val ast = Parser.parse(tks)
      println("Done.")

      print("Compiling abstract syntax tree ...")
      val asm = Compiler.compile(ast)
      println("Done.")

      if (mode == "-c") {
        write_text(asm, target)
      } else {
        val bytes = Assembler.assemble(asm, isa_text)
        write_bytes(bytes, target)
      }

      println("Done! Compiltation successfull!")
    }
  }

  time(main())
}
