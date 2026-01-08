---
layout: article
comments: true
title: "Technical Architecture"
subtitle: ""
teaser: "Thoughts and Ramblings"
tags:
  - electronics
  - lego
---
## Lego City Aims

So I'm looking to bring the city to life - not just static lights but an ever-changing panaroma; and not just randomly, but according to a sensible pattern, triggered by the time, by pressing buttons or even just walking past!

This implies that everything is connected to some controlling device which can coordinate events across the city depending on a number of inputs.

## Implications

*   Some sort of computing device for overall control
*   Every output (light, motor, billboard etc.) individually controllable
    *   Or at least controllable in small groups, e.g. a single room
*   Sensors to include time of day, temperature, nearby movement etc.
*   Devices likely to need more power than available from, say GPIO outputs
*   Physical spread is 2 or 3 shelves, 30cm apart, up to 100cm long
    *   TTL signal levels may not be sufficient, especially given:
*   Minimal modification to Lego components if possible, so very thin wires!

## First Cut Architecture

My first thought was to use a number of Ardunio Nano micro-controllers, roughly one per building with digital outputs expanded via shift-registers and output current amplified by discrete transistors. Each Arduino would run a common code base, the precise hardware configuration and operational parameters would be stored indvidually in the non-volatile RAM. There would be a simple monitor program over the serial line which would allow entry of configuration data into the NVRAM and to override the operation for remote control. For coordination between devices they would be interconnected either by I2C connections or an Arduino Mega could control up to 4 other devices via multiple serial lines (or I could build a serial multiplexor).

I did get a fair way into this architecture, building a proof-of-concept that combined inputs from a temperature / humidity sensor with a number of LEDs via 545 shift register and a 1602 LCD display.

The compromises needed to squeeze the configuration data into 1K of NVRAM were (in my humble opinion!) very clever, but made for fairly impenetrable code and needed extensive reading of my notes to set the configuration correctly! And this was before any adding the ability for remote control... So...

## Second Cut Architecture

I'm still going to use the Arduino Nanos, but in a much more limited role. So for example I will likely use one for environmental monitoring (sound, temperature, movement etc.) and perhaps to drive advertising displays and billboards. In overall charge however will be a Raspberry Pi 400. This will control a small number of "local" devices directly using shift registers but mostly will remote control a larger number of independently powered "remote" device banks via I2C connections. These device banks will be driving either digital or PWM multiplexors for individual device control, possibly using discrete transistor drivers to support larger power requirements. Communication with the supporting Arduinos will be via serial lines or I2C depending on the richness of the data to be transferred.

The controlling program on the Pi will be written in Python, possibly with a GUI. The current version has a command line interface but simple commands can also be issued via an IR receiver.

The use of a "full fat" computer like the Pi allows for a much richer set of configuration directives, although they will use the same configuration "model" as the Arduinos, but more of this later.

For now, we should start with a small proof of concept and I think I'll start with the city bus...c"} /-->