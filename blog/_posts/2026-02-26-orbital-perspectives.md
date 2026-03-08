---
layout: article
comments: true
title: "Orbital Perspectives"
subtitle: "Visualising Orbital Skies"
tags:
  - personal
---

I’ve been fascinated by what are now known as ‘Banks orbitals’ ever since I
first read about them in Consider Phlebas, in which one was unfortunately
destroyed by combined matter/anti-matter bombardment and ‘gridfire’ during the
Idiran war.

With that conflict safely behind us, what would it be like to live on an
orbital; in particular, what would it look like in the sky?

Now I know that Isaac Arthur on his YouTube channel takes a fairly dim view of
them, reckoning there are more resource efficient ways to create lebensraum,
but I’m going to build a scale model and take a look anyway. The model is of
necessity quite crude, I’m just going to build something in POV-Ray and look at
it from various angles. Why POV-Ray? Well it has numeric precision built into
it by definition so we can be sure that our relative proportions are correct.

This is going to be a scale model and I’ve chosen a scale of 1 POV-Ray unit
being 1,000 km. Here is a crude rendering of our first orbital.

Our basic dimensions are a diameter of 3 million km (3000 POV-Ray units), and a
width (wall to wall) of 2000 km and walls some 500 km high.

Now I don’t think anyone really wants to live immediately beside, or even
anywhere near a 500 km high wall,
so rather than have a right angle between “surface” and “wall” I’ve decided to
add a quarter circle buffer zone that curves up from the surface to meet the
wall. Thus the available surface is around 1,200 km across – giving us an
available surface area of about 1.2 billion square km.

I’ve also added some (equally crude) “mountains” at 3 degree intervals around
the circumference (hence about 78,000 km apart) to break up the coriolis winds
and allow for different, isolated habitats if needed.

{% include figure src="/blog/orbital/orbital2.png" caption="Above the atmosphere, looking along the orbital" align="centre" %}

What I was particularly interested in was the appearance of “higher” portions
of the orbital in the sky at different widths. This is the same size orbital
as above, but viewed from lower down in the atmosphere.

{% include figure src="/blog/orbital/orbital3.png" caption="Inside the atmosphere, looking along the orbital" align="centre" %}

The model doesn’t simulate any atmospheric attenuation but we can assume that
the “lower” portions disappear in the haze, leaving the upper ribbon both
visible and casting at least as much reflected light as the full moon, if not
more, especially if we increase the total width to 10,000km (with around 8,000km
of usable land width), as shown below.

{% include figure src="/blog/orbital/orbital4.png" caption="Inside the atmosphere of a wider orbital, looking along the orbital" align="centre" %}

And for any artwork based on orbitals I wanted to know how to realistically
show (from the surface) what the rest of the orbital looks like and I think
these simulations give me a good idea. Obviously from any point on the surface
of the orbital the “arch” can appear in any "compass" direction but will always
go straight “up” to meet the other part at a point directly overhead.

I’m also interested in how sunset and sunrise would look on an orbital so the
next phase in the simulation is to animate the rotation of our model while
looking towards the sun. With this space (or, more accurately, watch this sky!).

If you want to fiddle about with the various settings yourself the POV-ray source
file is attached below.

{% include download src="/blog/orbital/orbital4.pov" desc="POV-ray source file" %}
