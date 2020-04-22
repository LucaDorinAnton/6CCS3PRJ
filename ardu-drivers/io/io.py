import serial
import sys
import time


def start_io_loop(ser, data):
    print("Sending read queue ...", end="")
    for d in Data:
        ser.write(d)
    print("Done.")
    print("Starting write loop. Use Ctrl+C to exit.")
    while True:
        bytes = ser.read(2)
        if bytes:
            display_bytes(bytes)
        time.sleep(1)

def display_bytes(bytes):
    i = int.from_bytes(bytes, "big")
    print("Arduino > %i" % i)

def get_queue(fn):

    with open(fn, "r") as f:
        data = f.readlines()
        if len(data) > 10:
            data = data[:10]
    return data

def process_data(data):
    res = []
    for d in data:
        d= d.strip()
        if d[0:2].lower() == "0x":
            res.append(int(d, 16))
        elif d[0:2].lower() == "0b":
            res.append(int(d, 2))
        elif d[0:2].lower() == "0d":
            res.append(int(d, 10))
        else:
            res.append(int(d))
    return res

def build_bytes(data):
    return [t.to_bytes(2, "big") for t in data]

def help():
    s = "I/O Script for the 16-bit BreadBoard computer.\n"
    s += "      Built by Luca-Dorin Anton. This project contributes to a degree.\n"
    s += "Usage: python3 io.py [COM] [queue_file]\n"
    s += "Argument description:\n"
    s += "      COM : COM port to which the Arduino is connected. Can be found using the Arduino IDE"
    s += "      queue_file: File containing hex/dec/bin numbers. Forms the read queue for the computer. Only first 10 will be considered"
    print(s)

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Insufficient Arguments")
        help()
        sys.exit(1)
    print("Initializing Arduino serial ...")
    ardu_ser = serial.Serial(sys.argv[1], 9600, timeout=1)
    time.sleep(3)
    print("Done!")
    print("Reading queue ...", end="")
    q = get_queue(sys.argv[2])
    d = process_data(q)
    b = build_bytes(d)
    print("Done.")
    start_io_loop(ardu_ser, b)
