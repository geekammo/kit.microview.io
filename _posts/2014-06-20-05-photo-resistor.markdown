---
layout: post
title:  "05 Photo Resistors"
date:   2014-06-20 20:16:18
categories: tutorial
hype: 05-photo-resistor
codebender: 36525
parts:
    - sku:	    SEN-09088
      points:	A11 → A14


intro: |
  So you’ve already played with a potentiometer, which varies resistance based on the twisting of a knob. In this circuit, you’ll be using a photo resistor, which changes resistance based on how much light the sensor receives.

code_to_note: |

  A “variable” is a stored value you’ve given a name to. You must introduce, or "declare" variables before you use them; here we're declaring a variable called sensorValue, of type "int" (integer). Don't forget that variable names are case-sensitive!

      int sensorValue;

  We use the analogRead() function to read the value on an analog pin. analogRead() takes one parameter, the analog pin you want to use ("sensorPin"), and returns a number ("sensorValue") between 0 (0 volts) and 1023 (5 volts).

      sensorValue = analogRead(sensorPin);

what_you_should_see: |
  You should see the potentiometer value being displayed on the MicroView's display.

toubleshooting: |
  **Sporadically Working**

  This is most likely due to a slightly dodgy connection with the photoresistor's pins. This can usually be conquered by pushing the photoresistor down into the breadboard.  
  
---
## Pull Up Resistors

Many of the sensors you'll use (potentiometers, photoresistors, etc.) are resistors in disguise. Their resistance changes in proportion to whatever they're sensing (light level, temperature, sound, etc.).

The MicroView's analog input pins measure voltage, not resistance. But we can easily read voltage by using the MicroView's internal pull up resistors.