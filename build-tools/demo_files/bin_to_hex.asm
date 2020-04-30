
C0 = 0x200
C1 = 0x201
C2 = 0x202
C3 = 0x203

C4 = 0x204
C5 = 0x205
C6 = 0x206
C7 = 0x207

C8 = 0x208
C9 = 0x209
CA = 0x20A
CB = 0x20B

CC = 0x20C
CD = 0x20D
CE = 0x20E
CF = 0x20F
CX = 0x210

FS = 0x211
CLEAR = 0x212
ON = 0x213
DEMO = 0x214

main:
# Init display, print 0x
  JSR init_display
  DWR C0
  DWR CX
# display first nibble
  LDS DEMO
  LAI 1
  JSR display_nibble
# display second nibble
  LDS DEMO
  LAI 5
  JSR display_nibble
# display 3rd nibble
  LDS DEMO
  LAI 9
  JSR display_nibble
# display 4th nibble
  LDS DEMO
  LAI 13
  JSR display_nibble
  HLT

init_display:
  DWR FS
  DWR CLEAR
  DWR ON
  RET

shift_left:
  SUB
  BRZ done
  SFR
  JMP shift_left

shift_right:
  SUB
  BRZ done
  SFL
  JMP shift_right

display_s_p:
  MSB
  LAI 0x200
  ADD
  LAP
  DWA
  RET

display_nibble:
  LBI 1
  JSR shift_right
  LAI 13
  LBI 1
  JSR shift_left
  JSR display_s_p
  RET

done:
  RET




data:
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
  DEMO set 0xF1F2
