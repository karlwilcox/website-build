---
layout              : article
title               : "SDCC and the Z80 Workbench"
subheadline         : ""
teaser         : ""
category               : "general"
comments           : true
---
### Part 1 - An absolutely minimal C program

To save a bit of development time I'm proposing to do my Z80 code development on a Z80 emulator rather than the long compile / burn to eeprom / turn on breadboard cycle. Which emulator? I've gone for **Z80 Workbench** from HeinPragt.com which I run under Windows 11. You can find it available for [download here.](https://www.heinpragt.com/english/software_development/z80_processor_ide.html)

Now I'm not proposing to write in Z80 assembler, I want to work in one of the very first languages I programmed, C. So we also need a cross-compiler that will run under Windows. For this, I've chosen **SDCC**, downloads and manuals all [available from here](https://sdcc.sourceforge.net/).

Now with both of these installed (just follow the instructions linked above) we need to configure sdcc so that it generates machine code matching the emulator. So what does the emulator give us?

Firstly, the full 64K of memory is "present" so we can put our code and data anywhere, although we know that the Z80 from a cold start begins executing code from location 0, so that seems like a useful place to put at least some of our code! We also a get some pre-configured IO ports:

*   In 0x01 puts a keyboard character into register A
*   In 0x02 keyboard status (1 = character available)

*   Out 0x01 The seven segment display
*   Out 0x02 Seven segment control selection
*   Out 0x03 eight red LEDs

So how do we tell sdcc about all of this? Firstly, there are some useful compiler flags for defining the memory map:

*   \--code\_loc 0 (sets the start location for the, not strictly needed as this is the default)
*   \--data\_loc 0x8000 (sets the data location, again this is the default so we don't really need it since our RAM is fully populated
*   \--stack\_loc \[To be investigated\]

We also want to program against "bare metal" and provide all our library support (if any) - we want to control every byte so we need to turn off the standard C libraries or runtimes as these can be quite large. (We can provide our own runtime later if we want to), so:

*   \--nostdinc
*   \--nostdlib
*   \--no-std-crt0

And of course we need to tell our target device!

*   \--mz80

As we all know, C is pretty free and easy with memory pointers, we can put data anywhere just by casting a number to an address, but how do we access the IO space? sdcc gives us some additional support for that, allowing us to define a variable that will be mapped to an IO port - we'll see the syntax of this in the code below.

Now that we have the information let's write an absolutely minimal C program to turn on those LEDs the emulator gives us, and at the same time investigate some other features. Here's our code:

```

char test;

__sfr __at 0x03 leds;

void main(void) {
test = 55;

leds = 0x55;
}
```

What are we doing here? Firstly, we define a global variable _test_ - by writing some value to it we can confirm that the compiler puts data where we think it should.

Secondly we use the magic sdcc incantation to create a variable _leds_ and associate that with the IO port at address 0x03;

Then in the main routine we just write a value to each of these variables. That's pretty minimal alright!

Here's our command line:

```
sdcc -mz80 --nostdinc --nostdlib --no-std-crt0 minimal.c
```

TO BE CONTINUED....