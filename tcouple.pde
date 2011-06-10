#include <stdint.h>
#include <SPI.h>

byte cspin = 53;

void setup() {
  Serial.begin(115200);
  SPI.begin();
  pinMode(cspin, OUTPUT);
  digitalWrite(cspin, HIGH);  
}

void loop() {
  digitalWrite(cspin, LOW);
  uint16_t b1 = SPI.transfer(0) << 8 + SPI.transfer(0);
  digitalWrite(cspin, HIGH);
  Serial.print("reading ");
  Serial.println(b1);
}
