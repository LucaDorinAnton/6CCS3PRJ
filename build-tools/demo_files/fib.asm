  MAXINT = 0x3EE
  DISPLAY_WORD = 0x3ED

  C0 = 0x300
  C1 = 0x301
  C2 = 0x302
  C3 = 0x303

  C4 = 0x304
  C5 = 0x305
  C6 = 0x306
  C7 = 0x307

  C8 = 0x308
  C9 = 0x309
  CA = 0x30A
  CB = 0x30B

  CC = 0x30C
  CD = 0x30D
  CE = 0x30E
  CF = 0x30F
  CX = 0x310

  FS = 0x33C
  CLEAR = 0x31D
  ON = 0x31E
  NEWLINE = 0x31F
  data:
   MAXINT set 0xFFFF
   DISPLAY_WORD set 0x0

  C0 set 0b100110000
  C1 set 0b100110001
  C2 set 0b100110010
  C3 set 0b100110011
  C4 set 0b100110100
  C5 set 0b100110101
  C6 set 0b100110110
  C7 set 0b100110111
  C8 set 0b100111000
  C9 set 0b100111001
  CA set 0b101000001
  CB set 0b101000010
  CC set 0b101000011
  CD set 0b101000100
  CE set 0b101000101
  CF set 0b101000110
  CX set 0b101111000
  FS set 0b000111000
  CLEAR set 0b000000001
  ON set 0b000001111
  NEWLINE set 0b011000000
init_display:
   DWR FS
   DWR CLEAR
   DWR ON
   RET
display_word:
   JSR init_display
   DWR C0
   DWR CX
   LDS DISPLAY_WORD
   LAI 1
   JSR display_nibble
   LDS DISPLAY_WORD
   LAI 5
   JSR display_nibble
   LDS DISPLAY_WORD
   LAI 9
   JSR display_nibble
   LDS DISPLAY_WORD
   LAI 13
   JSR display_nibble
   RET
display_nibble:
   LBI 1
   JSR shift_left
   LAI 13
   LBI 1
   JSR shift_right
   JSR display_s_p
   RET
shift_left:
   SUB
   BRZ done
   SFL
   JMP shift_left
shift_right:
   SUB
   BRZ done
   SFR
   JMP shift_right
done:
   RET
display_s_p:
   MSB
   LAI 0x300
   ADD
   LAP
   DWA
   RET
main:
   LAI 0d5
   STA 512
   LAI 0d0
   STA 513
   LAI 0d1
   STA 514
   JMP Loop_begin_0
Loop_begin_0:
   LDA 512
   STA 0x3EF
   LAI 0d0
   LDB 0x3EF
   SUB
   BRC Loop_end_1
   LDA 514
   STA 515
   LDA 514
   STA 0x3EF
   LDA 513
   LDB 0x3EF
   ADD
   STA 514
   LDA 515
   STA 513
   LAI 0d1
   STA 0x3EF
   LDA 512
   LDB 0x3EF
   SUB
   STA 512
   JMP Loop_begin_0
Loop_end_1:
   NOP
   LDA 514
   STA DISPLAY_WORD
   JSR display_word
   HLT

# Compiled assembly for the 16-bit breadboard computer
