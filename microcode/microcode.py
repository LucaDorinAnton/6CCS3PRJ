from classes import instr_lst
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

    with open('eeprom1.bin', 'wb') as f:
        f.write(eeproms[0])

    with open('eeprom2.bin', 'wb') as f:
        f.write(eeproms[1])

    with open('eeprom3.bin', 'wb') as f:
        f.write(eeproms[2])

    with open('eeprom4.bin', 'wb') as f:
        f.write(eeproms[3])

def print_instr_lst(instr_lst):
    for i in instr_lst:
        print(i)


print_instr_lst(instr_lst)
write_files(instr_lst)
