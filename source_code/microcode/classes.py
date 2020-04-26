from enum import Enum

class ControlSig():

    def __init__(self,eeprom, byte, name, desc):
        self.eeprom = eeprom
        self.byte = byte
        self.name = name
        self.desc = desc


class CtrlSigs(Enum):

    # Control Signals for EEPROM 1
    CO  = ControlSig(1, 0b00000001, 'CO',"C Register Out")
    CI  = ControlSig(1, 0b00000010, 'CI', "C Register In")
    BO  = ControlSig(1, 0b00000100, 'BO', "B Register Out")
    BI  = ControlSig(1, 0b00001000, 'BI', "B Register In")
    RO  = ControlSig(1, 0b00010000, 'RO', "RAM Out")
    RI  = ControlSig(1, 0b00100000, 'RI', "RAM In")
    SU  = ControlSig(1, 0b01000000, 'SU', "Subtract")
    DONE= ControlSig(1, 0b10000000, 'DONE', "Instruction Finished")

    # Control Signals for EEPROM 2
    EO = ControlSig(2, 0b00000001, 'EO', "Sum Out")
    AO = ControlSig(2, 0b00000010, 'AO', "A Register Out")
    AI = ControlSig(2, 0b00000100, 'AI', "A Register In")
    E  = ControlSig(2, 0b00001000, 'E', "Enable I/O")
    RW = ControlSig(2, 0b00010000, 'RW', "I/O Read/Write Flag")
    FI = ControlSig(2, 0b00100000, 'FI', "Flags In")
    HLT= ControlSig(2, 0b01000000, 'HLT', "Halt Execution")
    RST= ControlSig(2, 0b10000000, 'RST', "Reset Computer")

    # Control Signals for EEPROM 3
    X  = ControlSig(3, 0b00000001, 'X', "No Op")
    OUT= ControlSig(3, 0b00000010, 'OUT', "Display In")
    STI= ControlSig(3, 0b00000100, 'STI', "Stack Pointer Increment")
    STD= ControlSig(3, 0b00001000, 'STD', "Stack Pointer Decrement")
    STJ= ControlSig(3, 0b00010000, 'STJ', "Stack Jump")
    STO= ControlSig(3, 0b00100000, 'STO', "Stack Out")
    II = ControlSig(3, 0b01000000, 'II', "Instruction Register In")
    IO = ControlSig(3, 0b10000000, 'IO', "Instruction Register Out")

    # Control Signals for EEPROM 4
    MI = ControlSig(4, 0b00000001, 'MI', "Memory Address Register In")
    CE = ControlSig(4, 0b00000010, 'CE', "Program Counter Enable")
    JMP= ControlSig(4, 0b00000100, 'JMP', "Program Counter In")
    CTO= ControlSig(4, 0b00001000, 'CTO', "Program Counter Out")
    SFR= ControlSig(4, 0b00010000, 'SFR', "Shift Right")
    SFL= ControlSig(4, 0b00100000, 'SFL', "Shift Left")
    SI = ControlSig(4, 0b01000000, 'SI', "Shift Register In")
    SO = ControlSig(4, 0b10000000, 'SO', "Shift Register Out")

# A microstep is one time step of the clock
class MicroStep():

    def __init__(self, sigs, desc=""):
        self.sigs = sigs
        self.desc = desc

    def end_instruction(self):
        self.sigs.append(CtrlSigs.DONE)

    def split_sigs(self):
        eeprom_bytes = [0b00000000] * 4
        for sig in self.sigs:
            eeprom_bytes[sig.value.eeprom - 1] = eeprom_bytes[sig.value.eeprom - 1] | sig.value.byte
        return eeprom_bytes


    def __str__(self):
        if len(self.sigs) == 0:
            return "; " + self.desc
        s = self.sigs[0].name
        for sig in self.sigs[1:]:
            s += ' | ' + sig.name
        return s + "; %s" % self.desc

# All instructions start like this
def create_fetch_cycle():
    t_0 = MicroStep([CtrlSigs.CTO, CtrlSigs.MI], "Move PC Contents to MAR")
    t_1 = MicroStep([CtrlSigs.RO, CtrlSigs.II, CtrlSigs.CE], "Move RAM Contents to IR; Increment PC")
    return [t_0, t_1]

# Instruction have flags, flags have lists of microsteps
class Instruction():

    def __init__(self, name, opcode=0b000000, desc='', op=False):
        self.flag_agnostic_steps = create_fetch_cycle()
        self.steps = {}
        self.name = name
        self.opcode = opcode
        self.desc = desc
        self.op = op

    def insert_step(self, step, flag='other'):
        if flag not in ['other', 'CF', 'ZF', 'PF']:
            raise Exception("Incorrect Flag")
        if flag == "other":
            self.flag_agnostic_steps.append(step)
            return
        if flag not in self.steps.keys():
            self.steps[flag] = create_fetch_cycle()
        self.steps[flag].append(step)


    def __str__(self):
        s = "Name: %s Opcode: %s Desc: %s Needs operand: %s\n" % (self.name, format(self.opcode, '06b'), self.desc, str(self.op))
        s += "  Flag agnostic:\n"
        for i in range(len(self.flag_agnostic_steps)):
            s += "      Step %s: %s \n" % (format(i, '03b'), str(self.flag_agnostic_steps[i]))
        for key in sorted(self.steps.keys()):
            s += "  Flag: %s\n" % key
            for i in range(len(self.steps[key])):
                s += "      Step %s: %s \n" % (format(i, '03b'), str(self.steps[key][i]))
        return s