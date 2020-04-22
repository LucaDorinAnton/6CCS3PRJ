byte byte_1 = 0;
byte byte_2 = 0;
bool got1 = false;
unsigned int idx = 0;
// Low-order to High-order bits`
const int addr[] = {35, 37, 39, 41, 43, 45, 47, 49, 51 ,53};
const int data[] = {22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52};

#define WRITE 23

void setup() {

  Serial.begin(9600);

  pinMode(WRITE, OUTPUT);
  digitalWrite(WRITE, LOW);
  
  for (int i = 0; i < 10; i++) {
    pinMode(addr[i], OUTPUT);
  }

  for (int i = 0; i < 16; i++) {
    pinMode(data[i], OUTPUT);
  }
  
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available() > 0) {
    if (got1) {
      byte_2 = Serial.read();
      prog_instr();
      got1 = false;
      idx += 1;
      Serial.println(idx);
    } else {
      byte_1 = Serial.read();
      got1 = true;
    }
  }
}

void prog_instr() {
  for(int i = 0; i < 10; i++) {
    if(bitRead(idx, i)) {
      digitalWrite(addr[i], HIGH);
    } else {
      digitalWrite(addr[i], LOW);
    }
  }
  
  delay(1);
  
  for(int i = 0; i< 8; i++) {
    if(bitRead(byte_1, i)) {
      digitalWrite(data[i], HIGH);
    } else {
      digitalWrite(data[i], LOW);
    }

    if(bitRead(byte_2, i)) {
      digitalWrite(data[i * 2 + 1], HIGH);
    } else {
      digitalWrite(data[i * 2 + 1], LOW);
    }
  }

  delay(1);

  digitalWrite(WRITE, HIGH);

  delay(1);

  digitalWrite(WRITE, LOW);
  
}
