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

class MicroStep():

    def __init__(self, sigs, desc=""):
        self.sigs = sigs
        self.desc = desc

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


def create_fetch_cycle():
    t_0 = MicroStep([CtrlSigs.CTO, CtrlSigs.MI], "Move PC Contents to MAR")
    t_1 = MicroStep([CtrlSigs.RO, CtrlSigs.II, CtrlSigs.CE], "Move RAM Contents to IR; Increment PC")
    return [t_0, t_1]

class Instruction():

    def __init__(self, name, opcode=0b000000, desc=''):
        self.steps = {'other' : create_fetch_cycle()}
        self.name = name
        self.opcode = opcode
        self.desc = desc


    def __str__(self):
        s = "Name: %s Opcode: %s Desc: %s\n" % (self.name, format(self.opcode, '06b'), self.desc)
        for key in sorted(self.steps.keys()):
            if key == 'other' :
                s += "  Flag agnostic:\n"
            else:
                s += "  Flags (CF/ZF/PF) : %s\n" % format(key, '03b')
            for i in range(len(self.steps[key])):
                s += "      Step %s: %s \n" % (format(i, '03b'), str(self.steps[key][i]))
        return s

NOP = Instruction('NOP', 0b000000, "Do absolutely nothing")
NOP.steps['other'].append(MicroStep([], "Do absolutely nothing"))

LDA = Instruction('LDA', 0b000001, "Load RAM Contents to Register A")
LDA.steps['other'].append(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR Address to MAR"))
LDA.steps['other'].append(MicroStep([CtrlSigs.RO, CtrlSigs.AI], "Move RAM contents to reg. A"))

OUT = Instruction('OUT', 0b111111, "Move contents of reg. A to Display")
OUT.steps['other'].append(MicroStep([CtrlSigs.AO, CtrlSigs.OUT], "Move contents of reg. A to Display"))

instr_lst = [NOP, LDA, OUT]
