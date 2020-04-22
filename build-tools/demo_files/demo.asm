test = 0x200

main:
  LDA test
  LBI 0x1
add:
  ADD
  JMP add
sub_1:
  NOP
sub_2:
  NOP
sub_4:
  NOP
sub_3:
  NOP

data:
