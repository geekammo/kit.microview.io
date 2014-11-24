---
layout: post
title:  "04 Push Buttons"
date:   2014-06-20 20:16:18
categories: tutorial
hype: 04-push-buttons
codebender: 36524
parts:
    - sku:	    COM-09190
      points:	D20, D22, G20, G22

    - sku:      BLACK-JUMPER
      points: B14 → B20

    - sku:      RED-JUMPER
      points: A13 → A22

intro: |
  In this circuit, we’ll be looking at one of the most common and simple inputs – a push button. The way a push button works with this MicroView tutorial is that when the button is pushed, the contacts in the button connects to the ground, MicroView reads this and reacts accordingly.

code_to_note: |

  The digital pins can be used as inputs as well as outputs. Before you do either, you need to tell the MicroView which direction you're going.

      pinMode(buttonPin, INPUT);

  To read a digital input, you use the digitalRead() function. It will return HIGH if there's 5V present at the pin, or LOW if there's 0V present at the pin.

      buttonState = digitalRead(buttonPin);

  Because we've connected the button to GND, it will read LOW when it's being pressed. Here we're using the "equivalence" operator ("==") to see if the button is being pressed.

      if (buttonState == LOW)

what_you_should_see: |
  You should see your MicroView print "ON" if you push the button, and "OFF" if you let go. (See the code to find out why!) If it isn't working, make sure you have assembled the circuit correctly and verified and uploaded the code to your MicroView or see the troubleshooting tips below.

toubleshooting: |
  **Light Not Turning On**

  The pushbutton is square, and because of this it is easy to put it in the wrong way. Rotate the button by 90 degrees and see if it starts working.  
  
  **Underwhelmed**

  No worries, these circuits are all super stripped down to make playing with the components easy, but once you throw them together the sky is the limit.

---

## How to use logic like a Vulcan:

One of the things that makes the MicroView so useful is that it can make complex decisions based on the input it's getting. For example, you could make a thermostat that turns on a heater if it gets too cold, a fan if it gets too hot, waters your plants if they get too dry, etc.

In order to make such decisions, the Arduino environment provides a set of logic operations that let you build complex "if" statements. They include:

<img src="/assets/logic.svg" style="width:100%" />

You can combine these functions to build complex if() statements.

    if ((mode == heat) && ((temperature < threshold) || (override == true))) {
        digitalWrite(HEATER, HIGH);
    }

...will turn on a heater if you're in heating mode AND the temperature is low, OR if you turn on a manual override. Using these logic operators, you can program your MicroView to make intelligent decisions and take control of the world around it!

