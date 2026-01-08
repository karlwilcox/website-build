---
layout              :  page
title               : "GPR40 Circuit Diagrams"
subtitle         : ""
teaser              : "Products of the Chase Group"
header:
   image_fullwidth  : "headers/gpr40-header.png"
sidebar: "chase-group"
permalink           : "/chase-group/gpr40/circuit-diagrams/"
---

These are in no particular order, and are not necessarily all referring to the
same version of the device, however I post them here in the hope that they will
be useful! Within the leather case there are 3 separate "trays" each encased in
aluminum(?) for RF isolation, I believe that they were referred to as the CPU,
IF and RF boards internally. I only have schematics, not actual layouts. I
think these were only 2 layer boards so were easy to modify by hand.

## 1 - RF & Calibrator PCB

This has a range of dates from 24/7/86 (so contemporary with my work on it) up
to 10/2/97. The scan is high quality and all parts are readable. As supplied to
me it was named 36197508\_S.pdf but I don't think that has any significance.

{% include download src="/chase-group/gpr40/RF-Calibrator-PCB.pdf" desc="RF Calibrator" %}

## 2 - Fine Step VCO PCB

This has dates starting from 2/9/92a up to 1/6/2001. A good quality scan with
all parts readable. Filename as supplied 36197615\_S.pdf.

{% include download src="/chase-group/gpr40/Fine-Step-VCO-PCB.pdf" desc="Fine Step VCO" %}

## 3 - Coarse Step VCO PCB

This has dates from 12/7/99 to 18/7/2001 and I believe that physically it is
located in the same tray as (2) above. A good quality scan with all parts
readable. Filename as supplied 36197802\_S.pdf.

{% include download src="/chase-group/gpr40/Coarse-Step-VCO-PCB.pdf" desc="Coarse Step VCO" %}

## 4 - Synthesizer and Control PCB

This has dates from 10/1/97 to 17/7/2001. It includes all the power supply and
a pair of HEF4094B shift registers connected serial in / parallel out which
control the selection of the VCOs and attenuators and 2 PLL synthesizers which
control the VCO frequency via some op-amps. A good quality scan with all parts
readable. Filename as supplied 36198004\_S.pdf.

{% include download src="/chase-group/gpr40/Synth-Control-PCB.pdf" desc="Synth Control PCB" %}

## 5 -Micro Board (CPU)

This is the board that I am most familiar with. It is known to be missing the
serial comms "daughter board" that was mounted up in one corner and contained
an UART and associated circuitry - for more details see the [remote operation
page](/chase-group/gpr40/remote-operation/).

The earliest date is January 1985 (which slightly pre-dates my arrival later in
that year) and the latest is 17/7/2001. A good quality scan with all parts
readable. Filename as supplied 36198108\_S.pdf.

{% include download src="/chase-group/gpr40/Micro-Board.pdf" desc="Microprocessor Board" %}

## 6 - RF PCB

The earliest date is 30/9/1994, latest is 17/7/2001. The scan quailty was not
great, this version has had the levels modified to remove a grey background.
Filename as supplied 36197900\_S.pdf.

{% include download src="/chase-group/gpr40/RF-PCB.pdf" desc="RF PCB" %}

## 7 - Down Convertor PCB

I think this is the add-on component, not part of the main GPR-40 receiver. The
scan quality is quite poor but mostly readable. The earliest date is 8/3/1996,
the latest is 27/08/2002. Filename as supplied 36199804\_S.pdf.

{% include download src="/chase-group/gpr40/Down-Convertor.pdf" desc="Down Convertor" %}

## 8 - Additional Diagrams

I was also supplied with the following file (original name 36198415\_S.pdf)
which consolidates the following 5 sheets:

* IF Filter Board
* AGC Amplifier 2nd mixer and 455KHz amplifier
* FM Demod, AF Filter and Mod Level Detector
* AEC Generator & Function Select
* IF Power Supply & Audio Amplifier

All sheets are dated from 13/4/1989 to 28/8/2002. The second and subsequent
pages have a grey background but I have left these untouched as it is possible
to see where modifications to the diagrams have been made in the white areas.
Note that because of this additional shading the file size is quite large.

{% include download src="/chase-group/gpr40/Additional-Diagrams.pdf" desc="Additional Diagrams" %}
