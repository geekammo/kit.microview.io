---
layout: post
title:  "09 Spinning a Motor"
date:   2014-06-20 20:16:18
categories: tutorial
hype: 10-motor
codebender: 36529
parts:
    - sku:	    COM-08377
      points:	  G15 → E15

    - sku:      COM-12852
      points:   A14, A15, A16

    - sku:      COM-08588
      points:   C24 → C28

    - sku:      ROB-11696
      points:   D24 → D28

    - sku:      RED-JUMPER
      points:   J8 → W10

    - sku:      RED-JUMPER
      points:   A24 → W25

    - sku:      BLUE-JUMPER
      points:   I11 → I15

    - sku:      YELLOW-JUMPER
      points:   B16 → B28

intro: |
  Remember before when you played around with a servo motor? Now we are going to tackle spinning a motor. This requires the use of a transistor, which can switch a larger amount of current than the MicroView can. When using a transistor, you just need to make sure its maximum specs are high enough for your use. The transistor we are using for this circuit is rated at 40V max and 200 milliamps max – perfect for our toy motor! When the motor is spinning and suddenly turned off, the magnetic field inside it collapses, generating a voltage spike. This can damage the transistor. To prevent this, we use a "flyback diode", which diverts the voltage spike around the transistor.


what_you_should_see: |
  The DC Motor should spin if you have assembled the circuit’s components correctly, and also verified/uploaded the correct code. If your circuit is not working check the troubleshooting section below.

code_to_note: |

  In this code we use the command `setPwmFrequency(motorPIN,1);` to call a _function_ (an encapsulated section of resuable code) for setting the PWM Frequency. Pulse Width Modulation, or PWM, is a technique for getting analog results with digital means. Digital control is used to create a square wave, a signal switched between on and off.

  The `setPwmFrequency` function is defined on line 25. 

      void setPwmFrequency(int pin, int divisor){
        ...
      }
  



toubleshooting: |
  **USB Port not providing enough power or tripping?**

  Some USB ports don't provide enough current to spin the motor. If that's the case with a USB port on your computer we recommend powering your MicroView and motor with a powered USB hub or by using batteries. Checkout <a href="/powering-motor-with-batteries.html">this circuit</a> for powering your motor with batteries.

  **Motor Not Spinning**

  If you sourced your own transistor, double check with the data sheet that the pinout is compatible with a P2N2222AG (many are reversed).  
  
  **Still No Luck**

  If you sourced your own motor, double check that it will work with 5 volts and that it does not draw too much power.

  **Still Not Working**
  Sometimes the MicroView will disconnect from the computer. Try un-plugging and then re-plugging it into your USB port.

---
