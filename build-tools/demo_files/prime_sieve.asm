
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

CI = 0x211
CS = 0x212

CP = 0x213
CR = 0x214
CM = 0x215

CN = 0x216
CO = 0x217
CT = 0x218
CEXCL = 0x219
CSPACE = 0x21A
CSMALL_E = 0x21B

FS = 0x21C
CLEAR = 0x21D
ON = 0x21E
NEWLINE = 0x21F

DIV_OPSPACE = 0x300
PRIME_CNT = 0x301
PRIME_CANDIDATE = 0x302
DIVIDE_BY = 0x303
DISPLAY_WORD = 0x304
INDEX = 0x305
MAX = 0x306

main:
  LAI 2
  STA DISPLAY_WORD
  JSR display_word
  JSR prime
  LAI 10
  JSR waste_time
  LAI 3
  STA DISPLAY_WORD
  JSR display_word
  JSR prime
  LAI 10
  JSR waste_time
  LAI 101
  STA MAX
  LAI 4
  STA INDEX
  JSR sieve_primes
  HLT

sieve_primes:
  LDA MAX
  LDB INDEX
  SUB
  BRZ done
  MBA
  JSR init_display
  JSR check_a_for_prime
  LDA INDEX
  LBI 1
  ADD
  STA INDEX
  LAI 10
  JSR waste_time
  JMP sieve_primes

waste_time:
  LBI 1
  SUB
  BRZ done
  NOP
  JMP waste_time

check_a_for_prime:
  STA PRIME_CANDIDATE
  STA DISPLAY_WORD
  JSR display_word
  DWR CSPACE
  LDA PRIME_CANDIDATE
  LBI 2
  JSR do_division
  MBA
  LBI 1
  ADD
  STA PRIME_CNT
  LAI 2
  STA DIVIDE_BY
  JSR check_prime
  RET


check_prime:
  LDA PRIME_CNT
  LDB DIVIDE_BY
  SUB
  BRZ prime
  LDA PRIME_CANDIDATE
  JSR do_division
  LBI 0
  ADD
  BRZ not_prime
  LDA DIVIDE_BY
  LBI 1
  ADD
  STA DIVIDE_BY
  JMP check_prime

prime:
  DWR NEWLINE
  DWR CI
  DWR CS
  DWR CSPACE
  DWR CP
  DWR CR
  DWR CI
  DWR CM
  DWR CSMALL_E
  DWR CEXCL
  RET

not_prime:
  DWR NEWLINE
  DWR CI
  DWR CS
  DWR CSPACE
  DWR CN
  DWR CO
  DWR CT
  DWR CSPACE
  DWR CP
  DWR CR
  DWR CI
  DWR CM
  DWR CSMALL_E
  DWR CEXCL
  RET

do_division:
  MAC
  LAI 0
  STA DIV_OPSPACE
  MCA
  JSR divide

divide:
  MAC
  JMP check_A_geq_B

check_A_geq_B:
  SUB
  BRC do_div
  MCA
  LDB DIV_OPSPACE
  RET

do_div:
  MCA
  SUB
  MAC
  LDA DIV_OPSPACE
  MBS
  LBI 1
  ADD
  STA DIV_OPSPACE
  MCA
  MSB
  JMP divide

init_display:
  DWR FS
  DWR CLEAR
  DWR ON
  RET

display_word:
# Init display, print 0x
  JSR init_display
  DWR C0
  DWR CX
# display first nibble
  LDS DISPLAY_WORD
  LAI 1
  JSR display_nibble
# display second nibble
  LDS DISPLAY_WORD
  LAI 5
  JSR display_nibble
# display 3rd nibble
  LDS DISPLAY_WORD
  LAI 9
  JSR display_nibble
# display 4th nibble
  LDS DISPLAY_WORD
  LAI 13
  JSR display_nibble
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
  NEWLINE set 0b011000000
  CI set 0b101101001
  CS set 0b101110011
  CP set 0b101110000
  CR set 0b101110010
  CM set 0b101101101
  CN set 0b101101110
  CO set 0b101101111
  CT set 0b101110100
  CEXCL set 0b100100001
  CSPACE set 0b100100000
  CSMALL_E set 0b101100101
  DIV_OPSPACE set 0
  PRIME_CNT set 0
  PRIME_CANDIDATE set 0
  DIVIDE_BY set 0
  INDEX set 0
  MAX set 0
