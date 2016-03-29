/*
  Analog Input
 Demonstrates analog input by reading an analog sensor on analog pin 0 and
 turning on and off a light emitting diode(LED)  connected to digital pin 13.
 The amount of time the LED will be on and off depends on
 the value obtained by analogRead().

 The circuit:
 * Potentiometer attached to analog input 0
 * center pin of the potentiometer to the analog pin
 * one side pin (either one) to ground
 * the other side pin to +5V
 * LED anode (long leg) attached to digital output 13
 * LED cathode (short leg) attached to ground

 * Note: because most Arduinos have a built-in LED attached
 to pin 13 on the board, the LED is optional.


 Created by David Cuartielles
 modified 30 Aug 2011
 By Tom Igoe

 This example code is in the public domain.

 http://www.arduino.cc/en/Tutorial/AnalogInput

 */

int sensorPin2 = A0;    // select the input pin for the potentiometer
int sensorP2;  // variable to store the value coming from the sensor
int oldP2 = 0;

int sensorPin1 = A1;    // select the input pin for the potentiometer
int sensorP1;  // variable to store the value coming from the sensor
int oldP1 = 0;

void setup() {
  // declare the ledPin as an OUTPUT:
  Serial.begin(9600);
}

void loop() {
  // read the value from the sensor:
  sensorP2 = analogRead(sensorPin2);
  sensorP1 = analogRead(sensorPin1);
  // turn the ledPin on
  if(sensorP2!=oldP2){
    Serial.print("w ");
    Serial.println(sensorP2);
    oldP2=sensorP2;
    }
  // turn the ledPin on
  if(sensorP1!=oldP1){
    Serial.print("q ");
    Serial.println(sensorP1);
    oldP1=sensorP1;
    }
  delay(100);
}
