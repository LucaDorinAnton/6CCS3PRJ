import serial
import sys
import time

def prog(ser, bytes):
    bytes = list(bytes)
    while len(bytes) != 0:
        byte_1 = bytes.pop()
        byte_2 = bytes.pop()

        bts = bytearray([byte_1, byte_2])
        ser.write(bts)
        ret = int(ser.readline().strip())
        if not ret:
            raise Exception("Error on programming instruction to Arduino! Aborting...")
        else:
            if ret == 0:
                print("0%...", end="")
            if ret == 256:
                print("25%...", end="")
            if ret == 512:
                print("50%...", end="")
            if ret == 768:
                print("75%..", end="")
            if ret == 1023:
                print("100%")
            sys.stdout.flush()

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
    print("Initializing Arduino serial ...")
    ardu_ser = serial.Serial(sys.argv[1], 9600, timeout=1)
    time.sleep(3)
    print("Done!")
    print("Writing instrutions ...")
    prog(ardu_ser, bytes)
    print("Done.")
