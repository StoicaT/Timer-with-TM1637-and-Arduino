//Designed by Stoica Tudor 02.2021  Rew 03.2021
//"Programable Timer" from n seconds to 0, n max=9999s.
// Possibility to memorize preset time.
// Rotary encoder

#include <Arduino.h>
#include <TM1637Display.h>

// Module connection pins (Digital Pins)
#define CLK 2
#define DIO 3


TM1637Display display(CLK, DIO);
byte u=0;// seconds s
byte z=0;// sX10
byte s=0;// sX100
byte m=0;// sX1000
int counter=0;
int n=0;
#define btMem 5 //Button "Memory" to ground
#define oRel A0 // OUT relay
#define oBuz 9 // OUT buzzer
#define pUsh 11 // OK rot. enc. to ground
#define rEnb 12 //Rot enc "B" to ground
#define rEna 10 //Rot enc "A" to ground
 
 
void setup()
{
pinMode(btMem, INPUT_PULLUP);//"Memory" button to GND 
pinMode(rEna, INPUT_PULLUP);//Rot enc left
pinMode(pUsh, INPUT_PULLUP);//OK button to GND
pinMode(rEnb, INPUT_PULLUP);//Rot enc right
pinMode(oRel,OUTPUT );//Out Relay
pinMode(oBuz,OUTPUT );//Out Buzzer
display.setBrightness(7);
 display.showNumberDec(0, true);
 delay(1000);
  display.clear();
  delay(1000);
   display.showNumberDec(0, true);
 digitalWrite((oBuz), HIGH);
 delay(1000);
digitalWrite((oBuz), LOW);

}

void loop()
{
  // set timer
 
  // set s. 
  do{
  u= roTen();
  //display.clear();
  display.showNumberDec(u); //Display the n value;
  delay(250);
  }while(digitalRead(pUsh)==HIGH);//"Push" button
  delay(250);
  counter=0;

// set sX10.
 display.showNumberDec(u,true,2,2);//Display 0u
do{
  z= roTen();
  n=z*10+u;
  //display.clear();
  display.showNumberDec(n , true,2,2); //Display the n value;
  delay(250);
  }while(digitalRead(pUsh)==HIGH);//"Push" button
  delay(250);
  counter=0;

  // set sX100. 
do{
  s= roTen();
  n=s*100+z*10+u;
  //display.clear();
  display.showNumberDec(n , true, 3, 1); //Display the n value;
  delay(250);
  }while(digitalRead(pUsh)==HIGH);//"Push" button
  delay(250);
  counter=0;

   // set sX1000. 
do{
  m= roTen();
  n=m*1000+s*100+z*10+u;
  //display.clear();
  display.showNumberDec(n , true, 4,0); //Display the n value;
  delay(250);
  }while(digitalRead(pUsh)==HIGH);//"Push" button
  delay(250);
  counter=0;
  //Out of set routine
 
    n=m*1000+s*100+z*10+u;//compute "n"
    if(n!=0){
    
  do{//Memory  
    n=m*1000+s*100+z*10+u;//compute "n"
    
     //display set "n"
     
   display.showNumberDec(n);
   
while(0==digitalRead(pUsh));//"Push" button to start
while(1==digitalRead(pUsh));
delay(50);


  digitalWrite(oRel,HIGH);//Start Rel
  
  do{// decrease time
  //display current "n"
   display.showNumberDec(n);
  
  while(millis() % 1000 != 0);//time base, 1s.
  
  n=n-1;
  }while(n!=0);
  
   
  display.showNumberDec(n);//display n=0
  
  digitalWrite(oRel,LOW);//Stop Rel
  
digitalWrite(oBuz,HIGH);// start beep to end
delay(1000);
digitalWrite(oBuz,LOW);   //  stop beep to end

  }while(digitalRead(btMem)==LOW);//"Memory" button
  u=0;
  z=0;
  s=0;
  m=0;
}
}

byte roTen(){ //  Rotary encoder routine
 while(digitalRead(pUsh) &digitalRead(rEnb) & digitalRead(rEna)==1);
  if(digitalRead(pUsh)==0){
  return counter;
  }
   switch(digitalRead(rEna)) {
    case HIGH:
    while(digitalRead(rEna)==0);
    while(digitalRead(rEnb)==0);
    counter ++;
    counter=counter%10;
    break;
    case LOW:
   while(digitalRead(rEnb)==0);
   while(digitalRead(rEna)==0);
   counter --;
    if(counter==-1){
    counter=9;//left begin with 9
    } 
    counter=abs(counter)%10;
  break; 
  }
  return counter;
   }                      
 
