from microinstructions import instr_lst
import sys, time
# print(NOP)

# for step in NOP.steps['other']:
#     test = step.split_sigs()
#     s = ''
#     for b in test:
#         s += format(b, '08b') + " "
#     print(s)


def generate_microcode(instr_lst):
    eeproms = []
    for i in range(4):
        eeproms.append(bytearray([0b00] * 8192))
    for instr in instr_lst:
        for flags in range(8):
            if flags in instr.steps.keys():
                steps = instr.steps[flags]
            else:
                steps = instr.steps['other']
            for step in range(8):
                if step < len(steps):
                    addr = int(format(instr.opcode, '06b') + format(flags, '03b')+ format(step, '03b'), 2)
                    byte_lst = steps[step].split_sigs()
                    for i in range(4):
                        eeproms[i][addr] = byte_lst[i]
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
