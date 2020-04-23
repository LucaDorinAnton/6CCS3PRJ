byte q1[10];  // low order byte queue
byte q2[10];  // high order byte queue
bool got1 = false;
int idx = 0;
byte byte_1;
byte byte_2;
int read_idx = 0;
// Low-order to High-order bits
const int data[] = {22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52};

#define DIR 49
#define E 2

// Write the front of the queue to the digital pins
void output_data() {
    for(int i = 0; i< 8; i++) {
    if(bitRead(q1[i], i)) {
      digitalWrite(data[i], HIGH);
    } else {
      digitalWrite(data[i], LOW);
    }

    if(bitRead(q2[i], i)) {
      digitalWrite(data[8 + i], HIGH);
    } else {
      digitalWrite(data[8 + 1], LOW);
    }
  }
}

// Read from the digital pins and built bytes. Send them over to the computer
void input_data() {
  byte b1 = 0;
  byte b2 = 0;
  for(int i = 0; i< 8; i++) {
    b1 = b1 | digitalRead(data[i]);
    b1 = b1 << 1;
    b2 = b2 | digitalRead(data[i + 8]);
    b2 = b2 << 1;
  }
  Serial.write(b1);
  Serial.write(b2);
}

// Interrupt Sub Routine for handling IO requests
void ISR_handle_io() {
  if(digitalRead(DIR)) {
    set_read_mode();
    output_data();
    idx = (idx + 1) % 10;
  } else {
    set_write_mode();
    input_data();
  }
}

// Write TO Arduino
void set_write_mode() {
    for (int i = 0; i < 16; i++) {
    pinMode(data[i], INPUT);
  }
}

// Read FROM Arduino
void set_read_mode() {
  for (int i = 0; i < 16; i++) {
    pinMode(data[i], OUTPUT);
  }
}

void setup() {

  Serial.begin(9600);
  pinMode(DIR, INPUT);
  pinMode(E, INPUT);
  set_write_mode();
  attachInterrupt(digitalPinToInterrupt(E), ISR_handle_io, RISING);


}

void loop() {
  if (Serial.available() > 0) {
    if (got1) {
      byte_2 = Serial.read();
      q1[read_idx] = byte_1;
      q2[read_idx] = byte_2;
      read_idx = (read_idx + 1) % 10;
      got1 = false;
      Serial.println(idx);
    } else {
      byte_1 = Serial.read();
      got1 = true;
    }
  }
}
