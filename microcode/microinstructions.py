from classes import Instruction, CtrlSigs, MicroStep

NOP = Instruction('NOP', 0b000000, "Do absolutely nothing")
NOP.steps['other'].append(MicroStep([], "Do absolutely nothing"))

LDA = Instruction('LDA', 0b000001, "Load RAM Contents to Register A")
LDA.steps['other'].append(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR Address to MAR"))
LDA.steps['other'].append(MicroStep([CtrlSigs.RO, CtrlSigs.AI], "Move RAM contents to reg. A"))

OUT = Instruction('OUT', 0b111111, "Move contents of reg. A to Display")
OUT.steps['other'].append(MicroStep([CtrlSigs.AO, CtrlSigs.OUT], "Move contents of reg. A to Display"))

LDB = Instruction('LDB', 0b000010, "Load RAM Contents to Register B")
LDB.steps['other'].append(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR contetns to MAR"))
LDB.steps['other'].append(MicroStep([CtrlSigs.RO, CtrlSigs.BI], "Move RAM contents to reg. B"))

instr_lst = [NOP, LDA, LDB, OUT]
