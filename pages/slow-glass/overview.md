---
layout              : page
title               : "Slow Glass Animation System"
subheadline         : ""
teaser              : ""
header:
   image_fullwidth  : "headers/slow-glass.jpg"
permalink           : "slow-glass/overview/"
---

{% include figure src="/img/slow-glass/cafe-at-night.gif" caption="Bringing the Cafe at Arles to life" align="centre" %}

# Slow Glass?

The name "Slow Glass" was inspired by the famous Bob Shaw short story "The Light of Other Days". In the story a form of glass is invented which it takes light 20 or more years to travel through its thickness. A pane of such glass can be set up in some picturesque location, left for a few decades and then moved to a new location like the wall of your Manhattan apartment and you get the benefit of that pretty view for an equivalent length of time.

The Slow Glass project aims to provide a similar experience but without the long wait!

## Key Features

* Scripted: Slow glass is controlled by a script file in a fairly readable structured English (not complex code)
* Animated: Moving images and sounds are catered for (2D sprite based for now, perhaps 3D later)
* Long-running: The expectation is that a device such as a Raspberry Pi is attached to a flat panel display and left to run for extended periods
* Event driven: Things happen in response to a wide variety of events:
  1. At regular intervals: "every five minutes"
  1. At fixed times: "each *:30:00" (on the half hour)
  1. At specific times: "at 12:00:00" 
  1. In response to user actions ("onclick...", "on key...")
  1. Randomly
  1. In response to external events (GPIO inputs, network activity...)
  1. Arbitrarily: "when &lt;expression&gt;"
* Media rich: In addition to the animations scripts can set GPIO outputs, send network messages or start other programs

## Requirements

Slow glass is written in Python 3 and uses the Pygame-ce(*) library. If you want to use time-of-day events your device needs a real-time clock. GPIO and network events obviously need the relevant hardware connections and libraries.

(*) Pygame-ce is required as Slow Glass uses features from this library that are not available in pygame (pygame-ce also seems to quicker to me)

## Guide to the Documentation

The best place to start is probably the [tutorial](/slow-glass/tutorial/).

The [reference](/slow-glass/reference/) page contains a list of all triggers and commands with a brief description.

The remaining pages cover particular concepts in more depth and should be consulted as and when
you need to know about them:

* [Animation methods](/slow-glass/animation-methods/)
* [Command Line Arguments](/slow-glass/command-line-arguments/)
* [Groups](/slow-glass/groups/j)
* [Scenes](/slow-glass/scenes/)
* [Triggers](/slow-glass/triggers/)
