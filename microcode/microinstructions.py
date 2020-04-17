from classes import Instruction, CtrlSigs, MicroStep

NOP = Instruction('NOP', 0b000000, "Do absolutely nothing")
NOP.steps['other'].append(MicroStep([], "Do absolutely nothing"))

LDA = Instruction('LDA', 0b000001, "Load RAM contents to Register A")
LDA.steps['other'].append(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR Address to MAR"))
LDA.steps['other'].append(MicroStep([CtrlSigs.RO, CtrlSigs.AI], "Move RAM contents to reg. A"))

LDB = Instruction('LDB', 0b000010, "Load RAM contents to Register B")
LDB.steps['other'].append(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR contetns to MAR"))
LDB.steps['other'].append(MicroStep([CtrlSigs.RO, CtrlSigs.BI], "Move RAM contents to reg. B"))

LDC = Instruction('LDC', 0b000011, "Load RAM contents to Register C")
LDC.steps['other'].append(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR Address to MAR"))
LDC.steps['other'].append(MicroStep([CtrlSigs.RO, CtrlSigs.CI], "Move RAM contents to reg. C"))

ADD = Instruction("ADD", 0b000100, "Add up reg. A contents to reg. B contents and store result in reg. A")
ADD.steps['other'].append(MicroStep([CtrlSigs.EO, CtrlSigs.AI, CtrlSigs.FI], "Move ALU contents to A register; Update Flags"))

SUB = Instruction("SUB", 0b000101, "Subtract reg. B contents from reg. A contents and store result in reg. A")
SUB.steps['other'].append(MicroStep([CtrlSigs.EO, CtrlSigs.AI, CtrlSigs.SU, CtrlSigs.FI], "Set Subtract Flag; Move ALU contents to A register; Update Flags"))

JMP = Instruction('JMP', 0b000110, "Jump to Specified Address")
JMP.steps['other'].append(MicroStep([CtrlSigs.JMP, CtrlSigs.IO], "Move IR contents to the PC"))

LDS = Instruction('LDS', 0b000111, "Load RAM contents to the Shift Register")
LDS.steps['other'].append(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR Address to MAR"))
LDS.steps['other'].append(MicroStep([CtrlSigs.RO, CtrlSigs.SI], "Move RAM contents to the Shift Register"))

HLT = Instruction('HLT', 0b111110, "Stop the clock")
HLT.steps['other'].append(MicroStep([CtrlSigs.HLT], "Stop the clock"))

OUT = Instruction('OUT', 0b111111, "Move contents of reg. A to Display")
OUT.steps['other'].append(MicroStep([CtrlSigs.AO, CtrlSigs.OUT], "Move contents of reg. A to Display"))


instr_lst = [NOP, LDA, LDB, LDC, ADD, SUB, JMP, LDS, HLT, OUT]
