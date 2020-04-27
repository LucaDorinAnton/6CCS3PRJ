from yamlparser import parse_instructions
from importlib import import_module
import sys, os, time


def flag_to_pattern(flag):
    if flag not in ['CF', 'ZF', 'PF']:
        raise Exception("Incorrect Flag")
    if flag == 'CF':
        pattern = 0b001
    elif flag == 'ZF':
        pattern = 0b010
    else:
        pattern = 0b100
    return pattern

# This is where the magic happens
def generate_microcode(instr_lst):
    eeproms = []
    for i in range(4):
        eeproms.append(bytearray([0b00] * 8192))
    for instr in instr_lst:
        for flag_pattern in range(8):
            steps = None
            found = False
            for flag in instr.steps.keys():
                if found:
                    break
                if flag_pattern & flag_to_pattern(flag):
                    steps = instr.steps[flag]
                    found = True
            if not found:
                steps = instr.flag_agnostic_steps
            # Instruction length optimization
            # if len(steps) < 8:
            #     steps[-1].end_instruction()
            for step in range(8):
                if step < len(steps):
                    # Cast three binary values together into an int
                    addr = int(format(instr.opcode, '06b') + format(flag_pattern, '03b')+ format(step, '03b'), 2)
                    byte_lst = steps[step].split_sigs()
                    for i in range(4):
                        eeproms[i][addr] = byte_lst[i]
                else:
                    break
    return eeproms

def write_files(instr_lst):
    eeproms = generate_microcode(instr_lst)
    print("Binary translation finished")

    with open('eeprom1.bin', 'wb') as f:
        f.write(eeproms[0])
    print("eeprom1.bin saved")

    with open('eeprom2.bin', 'wb') as f:
        f.write(eeproms[1])
    print("eeprom2.bin saved")

    with open('eeprom3.bin', 'wb') as f:
        f.write(eeproms[2])
    print("eeprom3.bin saved")

    with open('eeprom4.bin', 'wb') as f:
        f.write(eeproms[3])
    print("eeprom4.bin saved")
    print("Begin generating Assembler Instruction List")
    instr_names = []
    for i in instr_lst:
        instr_names.append(i.name)
    with open('instruction_list.txt', 'w') as f:
        for i in instr_names:
            f.write(i + '\n')
    print("Assembler Instruction List generation finished")

def print_instr_lst(instr_lst, to_print):
    if len(to_print) == 0:
        print("Microcode instruction descriptions")
        for i in instr_lst:
            print(i)
        print("Printed %i instructions." % len(instr_lst))
    else:
        printed = 0
        for name in to_print:
            found = False
            for instr in instr_lst:
                if instr.name == name:
                    print(instr)
                    found = True
                    break
            if not found:
                print("Name '%s' doesn't match any instruction. Skipping..." % name)
            else:
                printed += 1
        print("Successfully printed %i instructions" % printed)



def help():
    s = "Microcode generation tool for the 16-bit breadboard computer\n"
    s += "                                  built by Luca-Dorin Anton\n"
    s += "Usage: python3 microcode.py [py/yaml] [filename] [gen/print] [..instr_name]\n"
    s += "Argument description:\n"
    s += "  py/yaml: specifies if the supplied instruction file is in python or YAML format\n"
    s += "  filename: the file from which to read instructions\n"
    s += "  gen/print: whether to generate eeprom binaries (gen) or to print out instruction descriptions (print)\n"
    s += "  ..instr_name: if print is used, specify which instructions to print. If ommitted, all instructions will be printed out\n"
    s += "\nThis script is part of the 6CCSPRJ major project module and contributes to a degree\n"
    print(s)

if __name__ == "__main__":
    if len(sys.argv) < 4:
        help()
        sys.exit(1)
    if sys.argv[1].lower() not in ['py', 'yaml']:
        help()
        sys.exit(1)
    if sys.argv[3].lower() not in ['gen', 'print']:
        help()
        sys.exit(1)
    try:
        f = open(sys.argv[2], 'r')
        f.close()
    except:
        print("Error: Couldn't read file '%s', terminating." % sys.argv[2])
        help()
        sys.exit(1)
    mode = sys.argv[1].lower()
    file = sys.argv[2]
    task = sys.argv[3].lower()
    to_print = []
    if len(sys.argv) > 4:
        to_print = sys.argv[4:]
    if mode.lower() == 'py':
        name = os.path.splitext(file)[0]
        module = import_module(name)
        instr_lst = module.instr_lst
    else:
        instr_lst = parse_instructions(file)
    if task == 'gen':
        print("Starting EEPROM binary generation")
        start = time.time()
        write_files(instr_lst)
        end = time.time()
        print("Finished generating EEPROM binaries")
        print("Exec time: %s s" % str(round(end - start, 2)))
        sys.exit(0)
    else:
        print_instr_lst(instr_lst, to_print)
