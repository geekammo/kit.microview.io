---
layout: post
title:  "08 Piezo Element"
date:   2014-06-20 20:16:18
categories: tutorial
hype: 09-piezo
codebender: 36528
parts:
    - sku: COM-07950
      points:	E20 → E23

    - sku: BLACK-JUMPER
      points: A14 → A23

    - sku: RED-JUMPER
      points: B13 → B20

intro: |
  In this circuit, we'll again bridge the gap between the digital world and the analog world. We'll be using a Piezo buzzer that makes a small "click" when you apply voltage to it (try it!). By itself that isn't terribly exciting, but if you turn the voltage on and off hundreds of times a second, the buzzer will produce a tone. And if you string a bunch of tones together, you've got music! This circuit and sketch will play a classic tune. We'll never let you down!

code_to_note: |

  Up until now we've been working solely with numerical data, but the Arduino can also work with text. Characters (single, printable, letters, numbers and other symbols) have their own type, called "char". When you have an array of characters, it can be defined between double-quotes (also called a "string"), OR as a list of single-quoted characters.

      char notes[] = "cdfda ag cdfdg gf ";
      char names[] = {'c','d','e','f','g','a','b','C'};

  One of Arduino's many useful built-in commands is the tone() function. This function drives an output pin at a certain frequency, making it perfect for driving buzzers and speakers. If you give it a duration (in milliseconds), it will play the tone then stop. If you don't give it a duration, it will keep playing the tone forever (but you can stop it with another function, noTone() ).

      tone(pin, frequency, duration);

what_you_should_see: |
  You should see - well, nothing; but you should be able to hear a song. If it isn't working, make sure you have assembled the circuit correctly and verified and uploaded the code to your MicroView or see the troubleshooting tips below.

toubleshooting: |
  **No Sound**

  Given the size and shape of the piezo element it is easy to miss the right holes on the breadboard. Try double checking its placement.  
  
  **Can't Think While the Melody is Playing**

  Just pull up the piezo element whilst you think, upload your program then plug it back in.

---
