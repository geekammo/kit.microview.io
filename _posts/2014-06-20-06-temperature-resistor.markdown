---
layout: post
title:  "06 Temperature Sensor"
date:   2014-06-20 20:16:18
categories: tutorial
hype: 06-temperature-sensor
codebender: 36526
parts:
    - sku:	    SEN-10988
      points:	A14, A15, A16

    - sku: BLUE-JUMPER
      points: B13 → B15

    - sku: RED-JUMPER
      points: I8 → E16

intro: |
  A temperature sensor is exactly what it sounds like – a sensor used to measure ambient temperature. This particular sensor has three pins – a positive, a ground, and a signal. This is a linear temperature sensor. A change in temperature of one degree centigrade is equal to a change of 10 millivolts at the sensor output. The TMP36 sensor has a nominal 750 mV at 25°C (about room temperature). In this circuit, you’ll learn how to integrate the temperature sensor with your MicroView, and use the serial monitor to display the temperature.
  
  When you’re building the circuit be careful not to mix up the transistor and the temperature sensor, they’re almost identical. Look for “TMP” on the body of the temperature sensor.

  <img src="/assets/tmp36-pinout.png" />

what_you_should_see: |
  As you warm and cool your temperature sensor, you should be able to see the gauge on your MicroView's display go up or down. 

toubleshooting: |
  
  **Temperature Value is Unchanging**

  Try pinching the sensor with your fingers to heat it up or pressing a bag of ice against it to cool it down.

---
