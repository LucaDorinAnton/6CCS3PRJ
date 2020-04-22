   MAXINT = 0x3EE
data:
   MAXINT = 0xFFFF
main:
   IRA
   STA 512
   LAI 0d0
   STA 513
   LAI 0d1
   STA 514
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
   IWA
   
# Compiled assembly for the 16-bit breadboard computer
