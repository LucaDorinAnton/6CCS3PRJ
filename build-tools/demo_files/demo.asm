  TEST1 = 0x200
  TEST2 = 0x201

main:
  LAI 1
  IWA
  LBI 2
  IWB
  LCI 3
  IWC
  LSI 4
  IWS
  IWR TEST1

data:
  TEST1 set 0xAAAA
  TEST2 set 0xFFFF
