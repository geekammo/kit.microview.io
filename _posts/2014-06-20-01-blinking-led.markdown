---
layout: post
title:  "01 Blinking an LED"
date:   2014-06-20 20:16:18
categories: tutorial
hype: 01-blinking-an-led
codebender: 36521
parts:
    - sku:	    COM-09590
      points:	B14 [Cathode] → B15 [Anode]

    - sku:      COM-08377
      points:	A10 → A15

intro: |
  LEDs (light-emitting diodes) are small, powerful lights that are used in many different applications. To start off the MicroView course, we will work on blinking an LED. That's right - it's as simple as turning a light on and off. It might not seem like much, but establishing this important baseline will give you a solid foundation as we work toward more complex experiments.

code_to_note: |
  Before you can use one of the MicroView's pins, you need to tell the MicroView whether it is an INPUT or OUTPUT. We use a built-in "function" called `pinMode()` to do this.

      pinMode(A3, OUTPUT);

  When you're using a pin as an OUTPUT, you can command it to be HIGH (output 5 volts), or LOW (output 0 volts).

      digitalWrite(A3, HIGH);

  Arduino programs run in a loop. When the MicroView sees the `delay()` command, it will pause the loop for the amount of time (in milliseconds). For example delay(1000) will stop the loop for one second as there are 1000 ms in one second.

      delay(1000);

what_you_should_see: |
  You should see your LED blink on and off. If it isn't, make sure you have assembled the circuit correctly and verified and uploaded the code to your MicroView or see the troubleshooting tips below.

toubleshooting: |
  **LED Not Lighting Up?**

  LEDs will only work in one direction. Try taking it out and turning it around 180 degrees (no need to worry, installing it backward does no permanent harm).

---