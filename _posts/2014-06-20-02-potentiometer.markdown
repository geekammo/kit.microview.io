---
layout: post
title:  "02 Potentiometer"
date:   2014-06-20 20:16:18
categories: tutorial
hype: 02-potentiometer
codebender: 36522
parts:
    - sku:	    COM-09806
      points:	E18, E19 and E20

    - sku:      BLACK-JUMPER
      points: B14 → B18

    - sku:      BLUE-JUMPER
      points: A12 → A19
    
    - sku:      RED-JUMPER
      points: J8 → B20

intro: |
  In this circuit you’ll work with a potentiometer.
  A potentiometer is also known as a variable resistor. When it’s connected with 5 volts across its two outer pins, the middle pin outputs a voltage between 0 and 5, depending on the position of the knob on the potentiometer. A potentiometer is a perfect demonstration of a variable voltage divider circuit. The voltage is divided proportionate to the resistance between the middle pin and the ground pin. In this circuit, you’ll learn how to use a potentiometer and display it's value on the MicroView.

code_to_note: |

  A “variable” is a stored value you’ve given a name to. You must introduce, or "declare" variables before you use them; here we're declaring a variable called sensorValue, of type "int" (integer). Don't forget that variable names are case-sensitive!

      int sensorValue;

  We use the analogRead() function to read the value on an analog pin. analogRead() takes one parameter, the analog pin you want to use ("sensorPin"), and returns a number ("sensorValue") between 0 (0 volts) and 1023 (5 volts).

      sensorValue = analogRead(sensorPin);

what_you_should_see: |
  By turning the potentiometer's knob you should see on your MicroView's display two different styles of widget reflect the reading of the potentiometer.

toubleshooting: |
  **Sporadically Working**

  This is most likely due to a slightly dodgy connection with the potentiometer's pins. This can usually be conquered by holding the potentiometer down.  
  
  **Not working?**

  Make sure you haven’t accidentally connected the wiper, the resistive element in the potentiometer, to digital pin 0 rather than analog pin 0. (the row of pins beneath the power pins).

---
## Digital versus Analog

Your MicroView has two main types of pins, "DIGITAL" pins and "ANALOG" pins. What's the difference?


Many of the devices you'll interface to, such as LEDs and pushbuttons, have only two possible states: on and off, or as they're known to the MicroView, "HIGH" (5 volts) and "LOW" (0 volts). The digital pins on an MicroView are great at getting these signals to and from the outside world, and can even do tricks like simulated dimming (by blinking on and off really fast), and serial communications (transferring data to another device by encoding it as patterns of HIGH and LOW).

<img src="/assets/digital_example.svg" style="width:100%" />


But there are also a lot of things out there that aren't just "on" or "off". Temperature levels, control knobs, etc. all have a continuous range of values between HIGH and LOW. For these situations, the MicroView offers five analog inputs that translate an input voltage into a number that ranges from 0 (0 volts) to 1023 (5 volts). The analog pins are perfect for measuring all those "real world" values, and allow you to interface the MicroView to all kinds of things.

<img src="/assets/analog_example.svg" style="width:100%" />


