from microinstructions import instr_lst
import sys, time


def flag_to_pattern(flag):
    if flag not in ['CF', 'ZF', 'PF']:
        raise Exception("Incorrect Flag")
    if flag == 'CF':
        pattern = 0b100
    elif flag == 'ZF':
        pattern = 0b010
    else:
        pattern = 0b100
    return pattern

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
            if len(steps) < 8:
                steps[-1].end_instruction()
            for step in range(8):
                if step < len(steps):
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

def print_instr_lst(instr_lst):
    for i in instr_lst:
        print(i)
    print("Printed %i instructions." % len(instr_lst))


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Error: Please specify 'gen' or 'print' ")
        sys.exit(1)
    if sys.argv[1].lower() not in ['print', 'gen']:
        print("Error: Please specify 'gen' or 'print' ")
        sys.exit(1)
    if sys.argv[1].lower() == 'print':
        print_instr_lst(instr_lst)
        sys.exit(0)
    else:
        print("Starting EEPROM binary generation")
        start = time.time()
        write_files(instr_lst)
        end = time.time()
        print("Finished generating EEPROM binaries")
        print("Exec time: %s s" % str(round(end - start, 2)))
