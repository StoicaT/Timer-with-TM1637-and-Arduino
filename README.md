# Timer-with-TM1637-and-Arduino
Countdown timer with LED display drive by TM1637 and Arduino Nano.

This countdown timer allows timings in the 1-9999 seconds range. It is built around an Arduino Nano and timer programming is done with a rotary encoder. The display of the duration of the delay and the remaining time is made with LED display module with TM1637.This display is more visible than others I have previously presented, because the numbers are bigger and brighter.

Programming: Set number seconds (rotary encoder) -> push -> secondsX10 -> push -> 100Xseconds -> push -> 1000Xseconds. Now the time is set. The next push will trigger the delay.

During the time delay the load will be powered through the Rel relay. If the MEM button is pressed, no further programming is required, the previous value is retained. More to:
https://www.instructables.com/Timer-With-TM1637-and-Arduino/


