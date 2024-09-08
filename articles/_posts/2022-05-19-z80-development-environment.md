---
layout: article
comments: true
title: "Z80 Development Environment"
subheadline: ""
teaser: "Thoughts and Ramblings"
tags:
  - post
categories:
  - article
image:
  thumb: fp-gallery/Authority-Figure-thumb.jpg
  title: fp-gallery/Authority-Figure.jpg
  caption_url: "The Author"
---
## Hardware

I have ordered a Z80,a PIO, a UART, some RAM, EEPROM and assortment of crystal oscillators and already have breadboards and 
quite a bit of discrete logic already in stock.

First step here is to build a clock circuit, here’s a very simple one using schottky input inverters. 
You can see the waveforms from the oscillator and the invertor here - we are running at 4 MHz, the limit 
for Z80s back in the 1980s. I might also add a decade counter so that we can slow things down if we need to 
see what is happening a little more easily. Must remember to give the UART its own clock source if we do that!

## Software

We need a tool chain! I did consider using some 1980s technology for that too and do have a version of 
Xenix running on Qemu with all the usual Unix tools but getting a working Z80 Cross compiler is proving 
something of a challenge. Let's not make life too hard and use something a bit more modern.

So I have VS-code with the "Embedded IDE (eide) extension and installed the Small Device C Compiler, 
(SDCC) set of tools. Starting a new project we set the target to the Zilog Z80 and, for now, leave everything else 
(code, data locations etc) as they are. We can easily change these using linker options later.

I've also installed the excellent Z80 workbench emulator by Hein Praght and conformed that an EIDE build generates 
on Intel hex format file that we can load into the workbench and run successfully. In the first instance we will 
build our hardware to match the addressing scheme of the compiler and workbench- we can always modify it later 
if we need to.

I think our route from here will be along two parallel tracks - we will start developing a simple 
monitor program to run initially in the emulator and also start wiring up a breadboard with the minimal 
hardware we need just to think a LED or two - the hardware designer's "hello world!"

Watch this space...