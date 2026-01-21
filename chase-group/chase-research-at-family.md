---
layout              :  page
title               : "Chase Research AT Family"
subtitle         : ""
teaser              : "Products of the Chase Group"
header:
   image_fullwidth  : "headers/gpr40-header.png"
sidebar: "chase-group"
---

## Background

The Chase Research AT4+, AT8 and AT16 were terminal concentrators that allowed
the connection of 4, 8 or 16 RS232 serial lines to a computer with an AT/ISA
expansion bus. The host computer would be running some variant of Unix and in
general the serial lines would be used to connect terminals, creating a
multi-user system. For internal use and testing we tended to use
[Wyse 60 terminals](https://terminals-wiki.org/wiki/index.php/Wyse_WY-60), as I recall
we had both green and amber screened variants, the latter being preferred by
staff.

With the benefit of hindsight I have produced a
[technical appraisal of the product family here.](/chase-group/chase-at-family-technical-appraisal/)

## The Product Family

As far as I am aware the complete family of AT products (in order of development) is as follows:

**AT8** - 8 ports (4 dual UARTS), 37 way 'D' connector, signals Rx, Tx, CTS,
DTR; all packages DIP except for the CPU which was QFP and built on a 4 layer
PCB

**AT4+** - An AT8 with 2 DUARTS removed but providing additional modem control
lines on each RS232 port, DSR, RTS and DCD

**AT16** - a complete rework using QFP DUARTS to save space and a 6 layer
board. The 'D' connector was enlarged to 78 pins (_that_ took some finding, not
to mention soldering...) but provided the same set of signals as the AT8

**AT8+** - An AT16 with half the DUARTS removed but providing additional
control lines for the 8 ports since it retained the 78-way 'D' connector. Some
hardware components have been consolidated into ASICs.

(Non-standard versions)

I did speak to a gentleman from Northern Ireland who had de-soldered the line
driver ICs from AT8 cards and replaced them with RS422 line drivers - these ICs
had the same pinout but could overcome the 50ft maximum length of an RS232
cable, operating over a thousand feet with a matching end device.

## Physical Devices

I have an almost mint-condition AT8+ board complete with breakout box,
[you will find close-up photographs here](/chase-group/at8-gallery/).

## Documentation

I have the following documents related to these products:

**Chase Research AT family promotional Flyer**

{% include download src="/chase-group/chase-research-at4-8-16-flyer.pdf" desc="AT Family Flyer" %}

**Chase Research AT Range Serial I/O Controllers User Guide**

I was heavily involved in the production of this document (it has my name on
the front page and everything!) The (very 1980s) front cover logo is intended
to invoke communication lines with the squares at the bottom representing
digital bits.

The document itself was (if I remember correctly) written using the unix tool
_troff_, and printed in a big font using A4 sized paper on a new-fangled Canon
laser printer, and then photographically reduced to A5 by the printers. The
rather crude cabling diagrams shown as figures 5.2 to 5.4 were produced by a
very early version of MS Paint or something similar (and look it). The much
crisper pinout diagram figure 5.1 was hand-coded in Postscript(!) by Bob
Dunlop. Every computer manual in those days was printed A5 size and three-hole
punched, I think following the lead of the original IBM PC manual set.

{% include download src="/chase-group/chase-research-at4-4-16-manual.pdf" desc="AT Family Manual" %}

**Chase Research EISA 16 Terminal Concentrator**

Although not a member of the AT family of products I'm incuding this here as it
rather straddles the AT and PS families. As discussed on the PS page, IBM
created their proprietary MCA bus in an attempt to take back control of PC
hardware architectures for high performance systems. Wanting to respond with
their own improvements on the existing 16-bit ISA bus, a group of manufacturers
(notably Compaq as I recall) created the EISA bus with a clever (but expensive
to implement) design that would accept standard ISA cards but also had a deeper
set of edge connectors that extended the bus to 32 bits and increased the
memory address size and allowed greater speeds.

Chase Research supported this architecture by some fairly straight-forward
re-engineering of the AT16 which just needed the additional set of edge
connector pads and a reworking of the bus interface hardware. The EISA bus
never really caught on, being replaced by more capable dedicated expansion
buses, ultimately the PIC standard.

The only documentation I have for this product is the promotional flyer.

{% include download src="/chase-group/chase-research-eisa16-flyer.pdf" desc="EISA16 Flyer" %}
