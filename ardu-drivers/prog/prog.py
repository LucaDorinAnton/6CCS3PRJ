import serial
import sys

def prog(ser, bytes):
    while len(bytes) != 0:
        byte_1 = byte.pop()
        byte_2 = bytes.pop()

        bts = bytearray([byte_1, byte_2])
        ser.write(bts)
        x = int(ser.read())
        if x == 0:
            raise Exception("Error on programming instruction to Arduino! Aborting...")


def help():
    s = "Programmer Script for the 16-bit BreadBoard computer.\n"
    s += "      Built by Luca-Dorin Anton. This project contributes to a degree.\n"
    s += "Usage: python3 prog.py [COM] [binfile]\n"
    s += "Argument description:\n"
    s += "      COM : COM port to which the Arduino is connected. Can be found using the Arduino IDE"
    s += "      binfile: Binary file containing 16-bit BreadBoard computer executable"
    print(s)


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Insufficient Arguments")
        help()
        sys.exit(1)
    bytes = open(sys.argv[2], "rb").read()
    ardu_ser = serial.Serial(sys.argv[1], 9600, timeout=0.1)
    print("Writing instrutions ...")
    prog(ardu_ser, bytes)
    print("Done.")
