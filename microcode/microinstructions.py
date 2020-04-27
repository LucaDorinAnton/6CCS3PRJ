from classes import Instruction, CtrlSigs, MicroStep

instr_lst = []

# No Operation
NOP = Instruction('NOP', 0b000000, "Do absolutely nothing")
NOP.insert_step(MicroStep([], "Do absolutely nothing"))
instr_lst.append(NOP)

# A Load instructions
LDA = Instruction('LDA', 0b000001, "Load RAM contents to Register A", True)
LDA.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR Address to MAR"))
LDA.insert_step(MicroStep([CtrlSigs.RO, CtrlSigs.AI], "Move RAM contents to reg. A"))
instr_lst.append(LDA)

LAI = Instruction('LAI', 0b000010, "Load a value to Register A immediately", True)
LAI.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.AI], "Move IR value to reg. A"))
instr_lst.append(LAI)

# B Load Instructions
LDB = Instruction('LDB', 0b000011, "Load RAM contents to Register B", True)
LDB.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR contetns to MAR"))
LDB.insert_step(MicroStep([CtrlSigs.RO, CtrlSigs.BI], "Move RAM contents to reg. B"))
instr_lst.append(LDB)

LBI = Instruction('LBI', 0b000100, "Load a value to Register B immediately, True)
LBI.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.BI], "Move IR value to reg. B"))
instr_lst.append(LBI)

# C Load Instructions
LDC = Instruction('LDC', 0b000101, "Load RAM contents to Register C", True)
LDC.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR Address to MAR"))
LDC.insert_step(MicroStep([CtrlSigs.RO, CtrlSigs.CI], "Move RAM contents to reg. C"))
instr_lst.append(LDC)

LCI = Instruction('LCI', 0b000110, "Load a value to register C immediately", True)
LCI.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.CI], "Move IR value to reg. C"))
instr_lst.append(LCI)


# Shift Load Instruction
LDS = Instruction('LDS', 0b000111, "Load RAM contents to the Shift Register", True)
LDS.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR Address to MAR"))
LDS.insert_step(MicroStep([CtrlSigs.RO, CtrlSigs.SI], "Move RAM contents to the Shift Register"))
instr_lst.append(LDS)

LSI = Instruction('LSI', 0b001000, "Load a value to the shift register immediately", True)
LSI.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.SI], "Move IR value to the shift register"))
instr_lst.append(LSI)


# Data processing Instructions
ADD = Instruction("ADD", 0b001001, "Add up reg. A contents to reg. B contents and store result in reg. A")
ADD.insert_step(MicroStep([CtrlSigs.EO, CtrlSigs.AI, CtrlSigs.FI], "Move ALU contents to A register; Update Flags"))
instr_lst.append(ADD)

SUB = Instruction("SUB", 0b001010, "Subtract reg. B contents from reg. A contents and store result in reg. A")
SUB.insert_step(MicroStep([CtrlSigs.EO, CtrlSigs.AI, CtrlSigs.SU, CtrlSigs.FI], "Set Subtract Flag; Move ALU contents to A register; Update Flags"))
instr_lst.append(SUB)

SFL = Instruction("SFL", 0b001011, "Perform a left shift on the contents of the shift register")
SFL.insert_step(MicroStep([CtrlSigs.SFL], "Perform a left shift on the contents of the shift register"))
instr_lst.append(SFL)

SFR = Instruction("SFR", 0b001100, "Perform a right shift on the contents of the shift register")
SFR.insert_step(MicroStep([CtrlSigs.SFR], "Perform a right shift on the contents of the shift register"))
instr_lst.append(SFR)

# Jump and Branch Instructions
JMP = Instruction('JMP', 0b001101, "Jump to Specified Address", True)
JMP.insert_step(MicroStep([CtrlSigs.JMP, CtrlSigs.IO], "Move IR contents to the PC"))
instr_lst.append(JMP)

JPI = Instruction('JPI', 0b001110, "Jump indirectly to an address stored at the RAM address", True)
JPI.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR contents to MAR"))
JPI.insert_step(MicroStep([CtrlSigs.RO, CtrlSigs.JMP], "Move RAM contents to the program counter"))
instr_lst.append(JPI)

BRZ = Instruction('BRZ', 0b001111, "Branch to an address if the Zero Flag is set", True)
BRZ.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.JMP], "Move IR contents to the program counter if the Zero Flag is set"), 'ZF')
instr_lst.append(BRZ)

BRP = Instruction('BRP', 0b010000, "Branch to an address if the Parity Flag is set", True)
BRP.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.JMP], "Move IR contents to the program counter if the Parity Flag is set"), 'PF')
instr_lst.append(BRP)

BRC = Instruction('BRC', 0b010001, "Branch to an address if the Carry Flag is set", True)
BRC.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.JMP], "Move IR contents to the program counter if the Carry Flag is set"), 'CF')
instr_lst.append(BRC)

# Move from A instructions
MAB = Instruction('MAB', 0b010010, "Move reg. A contents to the B register")
MAB.insert_step(MicroStep([CtrlSigs.AO, CtrlSigs.BI], "Move reg. A contents to the B register"))
instr_lst.append(MAB)

MAC = Instruction('MAC', 0b010011, "Move reg. A contents to the C register")
MAC.insert_step(MicroStep([CtrlSigs.AO, CtrlSigs.CI], "Move reg. A contents to the C register"))
instr_lst.append(MAC)

MAS = Instruction('MAS', 0b010100, "Move reg. A contents to the shift register")
MAS.insert_step(MicroStep([CtrlSigs.AO, CtrlSigs.SI], "Move reg. A contents to the shift register"))
instr_lst.append(MAS)

# Move from B instructions
MBA = Instruction('MBA', 0b010101, "Move reg. B contents to the A register")
MBA.insert_step(MicroStep([CtrlSigs.BO, CtrlSigs.AI], "Move reg. B contents to the A register"))
instr_lst.append(MBA)

MBC = Instruction('MBC', 0b010110, "Move reg. B contents to the C register")
MBC.insert_step(MicroStep([CtrlSigs.BO, CtrlSigs.CI], "Move reg. B contents to the C register"))
instr_lst.append(MBC)

MBS = Instruction('MBS', 0b010111, "Move reg. B contents to the shift register")
MBS.insert_step(MicroStep([CtrlSigs.BO, CtrlSigs.SI], "Move reg. B contents to the shift register"))
instr_lst.append(MBS)

# Move from C instructions
MCA = Instruction('MCA', 0b011000, "Move reg. C contents to the A register")
MCA.insert_step(MicroStep([CtrlSigs.CO, CtrlSigs.AI], "Move reg. C contents to the A register"))
instr_lst.append(MCA)

MCB = Instruction('MCB', 0b011001, "Move reg. C contents to the B register")
MCB.insert_step(MicroStep([CtrlSigs.CO, CtrlSigs.BI], "Move reg. C contents to the B register"))
instr_lst.append(MCB)

MCS = Instruction('MCS', 0b011010, "Move reg. C contents to the shift register")
MCS.insert_step(MicroStep([CtrlSigs.CO, CtrlSigs.SI], "Move reg. C contents to the shift register"))
instr_lst.append(MCS)

# Move from shift register instructions
MSA = Instruction('MSA', 0b011011, "Move shift register contents to the A register")
MSA.insert_step(MicroStep([CtrlSigs.SO, CtrlSigs.AI], "Move shift register contents to the A register"))
instr_lst.append(MSA)

MSB = Instruction('MSB', 0b011100, "Move shift register contents to the B register")
MSB.insert_step(MicroStep([CtrlSigs.SO, CtrlSigs.BI], "Move shift register contents to the B register"))
instr_lst.append(MSB)

MSC = Instruction('MSC', 0b011101, "Move shift register contents to the C register")
MSC.insert_step(MicroStep([CtrlSigs.SO, CtrlSigs.CI], "Move shift register contents to the C register"))
instr_lst.append(MSC)

# RAM write instructions
STA = Instruction('STA', 0b011110, "Write the contents of the A register to RAM address stored in operand ", True)
STA.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR contents to the MAR"))
STA.insert_step(MicroStep([CtrlSigs.AO, CtrlSigs.RI], "Move reg. A contents to RAM"))
instr_lst.append(STA)

STB = Instruction('STB', 0b011111, "Write the contents of the B register to RAM address stored in operand ", True)
STB.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR contents to the MAR"))
STB.insert_step(MicroStep([CtrlSigs.BO, CtrlSigs.RI], "Move reg. B contents to RAM"))
instr_lst.append(STB)

STC = Instruction('STC', 0b100000, "Write the contents of the C register to RAM address stored in operand ", True)
STC.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR contents to the MAR"))
STC.insert_step(MicroStep([CtrlSigs.CO, CtrlSigs.RI], "Move reg. C contents to RAM"))
instr_lst.append(STC)

STS = Instruction('STS', 0b100001, "Write the contents of the shift register to RAM address stored in operand ", True)
STS.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR contents to the MAR"))
STS.insert_step(MicroStep([CtrlSigs.SO, CtrlSigs.RI], "Move reg. shift contents to RAM"))
instr_lst.append(STS)

# Stack Manipulation
JSR = Instruction('JSR', 0b100010, "Jump to subroutine", True)
JSR.insert_step(MicroStep([CtrlSigs.STO, CtrlSigs.MI], "Move stack pointer to MAR"))
JSR.insert_step(MicroStep([CtrlSigs.CTO, CtrlSigs.RI], "Store program counter in RAM stack"))
JSR.insert_step(MicroStep([CtrlSigs.STI, CtrlSigs.IO, CtrlSigs.JMP], "Increment Stack pointer. Move IR contents to the program counter"))
instr_lst.append(JSR)

RET = Instruction('RET', 0b100011, "Return from subroutine")
RET.insert_step(MicroStep([CtrlSigs.STD], "Decrement Stack pointer"))
RET.insert_step(MicroStep([CtrlSigs.STO, CtrlSigs.MI], "Move stack pointer to MAR"))
RET.insert_step(MicroStep([CtrlSigs.RO, CtrlSigs.JMP], "Move RAM contents to the program counter"))
instr_lst.append(RET)

# I/O Read Instructions
IRA = Instruction('IRA', 0b100100, "Read from I/O to the A register")
IRA.insert_step(MicroStep([CtrlSigs.E, CtrlSigs.AI], "Enable IO, set in read mode. Move data word to the A register"))
instr_lst.append(IRA)

IRB = Instruction('IRB', 0b100101, "Read from I/O to the B register")
IRB.insert_step(MicroStep([CtrlSigs.E, CtrlSigs.BI], "Enable I/O, set in read mode. Move data word to the B register"))
instr_lst.append(IRB)

IRC = Instruction('IRC', 0b100110, "Read from I/O to the C register")
IRC.insert_step(MicroStep([CtrlSigs.E, CtrlSigs.CI], "Enable I/O, set in read mode. Move data word to the C register"))
instr_lst.append(IRC)

IRS = Instruction('IRS', 0b100111, "Read from I/O to the shift register")
IRS.insert_step(MicroStep([CtrlSigs.E, CtrlSigs.SI], "Enable I/O, set in read mode. Move data word to the shift register"))
instr_lst.append(IRS)

IRR = Instruction('IRR', 0b101000, "Read from I/O to the RAM address specified in the instr. operand", True)
IRR.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR contents to the MAR"))
IRR.insert_step(MicroStep([CtrlSigs.E, CtrlSigs.RI], "Enable I/O, set in read mode. Move data word to RAM"))
instr_lst.append(IRR)

# I/O Write Instructions
IWA = Instruction('IWA', 0b101001, "Write A register contents to I/O")
IWA.insert_step(MicroStep([CtrlSigs.E, CtrlSigs.RW, CtrlSigs.AO], "Enable I/O, set in write mode. Move A reg. contents to I/O"))
instr_lst.append(IWA)

IWB = Instruction('IWB', 0b101010, "Write B register contents to I/O")
IWB.insert_step(MicroStep([CtrlSigs.E, CtrlSigs.RW, CtrlSigs.BO], "Enable I/O, set in write mode. Move B reg. contents to I/O"))
instr_lst.append(IWB)

IWC = Instruction('IWC', 0b101011, "Write C register contents to I/O")
IWC.insert_step(MicroStep([CtrlSigs.E, CtrlSigs.RW, CtrlSigs.CO], "Enable I/O, set in write mode. Move C reg. contents to I/O"))
instr_lst.append(IWC)

IWS = Instruction('IWS', 0b101100, "Write shift register contents to I/O")
IWS.insert_step(MicroStep([CtrlSigs.E, CtrlSigs.RW, CtrlSigs.SO], "Enable I/O, set in write mode. Move shift register contents to I/O"))
instr_lst.append(IWS)

IWR = Instruction('IWR', 0b101101, "Write RAM contents at address specified by instruction operand to I/O", True)
IWR.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR contents to MAR"))
IWR.insert_step(MicroStep([CtrlSigs.E, CtrlSigs.RW, CtrlSigs.RO], "Enable I/O, set in write mode. Move RAM contents to I/O"))
instr_lst.append(IWR)

# Display instructions
DWA = Instruction('DWA', 0b101110, "Write register A contents to the Display")
DWA.insert_step(MicroStep([CtrlSigs.AO, CtrlSigs.OUT], "Move contents of reg. A to Display"))
instr_lst.append(DWA)

DWB = Instruction('DWB', 0b101111, "Write register B contents to the Display")
DWB.insert_step(MicroStep([CtrlSigs.BO, CtrlSigs.OUT], "Move contents of reg. A to Display"))
instr_lst.append(DWB)

DWC = Instruction('DWC', 0b110000, "Write register C contents to the Display")
DWC.insert_step(MicroStep([CtrlSigs.CO, CtrlSigs.OUT], "Move contents of reg. C to Display"))
instr_lst.append(DWC)

DWS = Instruction('DWS', 0b110001, "Write shift register contents to the Display")
DWS.insert_step(MicroStep([CtrlSigs.SO, CtrlSigs.OUT], "Move contents of shift register to Display"))
instr_lst.append(DWS)

DWR = Instruction('DWR', 0b110010, "Write RAM contents at address specified by instruction operand to the Display", True)
DWR.insert_step(MicroStep([CtrlSigs.IO, CtrlSigs.MI], "Move IR contents to the MAR"))
DWR.insert_step(MicroStep([CtrlSigs.RO, CtrlSigs.OUT], "Move RAM contents to Display"))
instr_lst.append(DWR)

# Computer and clock manipulation
RST = Instruction('RST', 0b111110, "Reset the computer")
RST.insert_step(MicroStep([CtrlSigs.RST], "Reset the computer"))
instr_lst.append(RST)

HLT = Instruction('HLT', 0b111111, "Stop the clock")
HLT.insert_step(MicroStep([CtrlSigs.HLT], "Stop the clock"))
instr_lst.append(HLT)
