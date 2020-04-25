# 6CCS3PRJ
Personal Major Project - 16 Bit BreadBoard Computer
Luca-Dorin Anton - 1710700

## How to run the different tools

### Installation guide
You will need to have the following installed in order
to run all tools effectivley:

1. Python: https://www.python.org/
2. PyYAML: python3 -m pip install pyyaml
3. PySerial: python3 -m pip install pyserial
4. Scala: https://www.scala-lang.org/
5. SBT: https://www.scala-sbt.org/
6. Arduino IDE: https://www.arduino.cc/en/main/software

### Microcode Generator
1. cd into the microcode directory
2. run python3 microcode.py py microinstructions.py gen
3. run python3 microcode.py py microinstructions.py print
4. run python3 microcode.py yaml microinstructions.yaml gen
5. run python3 microcode.py yaml microinstructions.yaml print
6. Exepriment by altering the microinstruction files and re running

### Assembler /Compiler
1. cd into the build-tools directory
2. run sbt. You are no inside the sbt shell
3. Run reload
4. Run compile
5. Run run [-d/-c/-a] [source_file] microinstructions.yaml out[.bin/.asm] demo_files
(There are multiple files inside the demo files directory to play and experiment with)

## Arduino drivers
(You will need an Arduino to test this out)
1. Open the Arduino IDE
2. Paste in one of the two drivers
3. In the IDE, go to Tools > Processor and select your type of Arduino
4. Connect your Arduino to the computer
4. In the IDE, go to Tools > Port and select the COM port with your Arduino
5. Click the checkmark to compile
6. Click the arrow to upload to the Arduino
7. cd into that directory (ardu-drivers/[io/prog])
8. run python3 [io.py/prog.py]
