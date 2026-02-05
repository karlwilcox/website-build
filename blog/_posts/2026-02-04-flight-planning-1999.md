---
layout: article
comments: true
title: "Let's Plan Flights Like its 1999"
subtitle: "A Historical Document"
tags:
  - personal
thumb: flight-plan.jpg
---

In preparing some old teaching material for publishing here [under the
cs-teaching section](/cs-teaching/) I came across a document that I wrote in
1999 explaining how commercial airline flight planning works. It still reads
quite well today so I present it here in its original form as a document of
historical interest, at least to me!

{% include figure src="/blog/flight-plan.jpg" caption="A High Level Route Chart, circa 1999" align="centre" %}

## How to do Flight Planning

Version 0.1 - Draft

### What is a Flight Plan?

A flight plan is a description of the route that an aircraft intends to take
between the origin and destination. The description includes which airways it
will fly along, at what altitude and at what time. The plan can also include
information on which airfields have been chosen as alternates, the expected
fuel burn at selected points, navigation aid and company radio frequencies,
reporting points and so on.

Note that the same “flight plan” may exist in several different forms. The plan
“filed” with Air Traffic Control contains only the aircraft type, route, and
altitude. The plan printed for the flight crew contains much more detail and
extra information. The plan loaded into the Flight Management System (FMS) on
the flight deck typically falls somewhere between the others in detail.

### So What’s the problem?

A Flight Plan between two points is a four-way balancing act between payload,
range, flight time and cost. You may be able to fly further but this means you
can carry less. You may wish to fly faster but this need more fuel. Each
parameter is affected by changes in the others. The “optimum” answer (i.e. the
“best” flight plan) depends on what you are trying to achieve. You may wish to
maximise payload, achieve a flight time that meets the schedule, or minimises
some overall cost function. These criteria may be different for each flight.

### What are Those Parameters Again?

Payload is how much useful stuff an aircraft can carry, like passengers, their
bags and cargo. As well as having a maximum quoted payload figure, there are
also restrictions like lack of physical space, the requirement for an aircraft
to be balanced, and the loading per unit area that particular parts of the hold
can support. If you are operating to or from an airport with a very heavy
demand for both passengers and cargo (e.g. Singapore) it is useful to be able
to maximise payload.

Range is simply how far an aircraft can fly. It is effectively a measure of the
available wind distance (explained below) that an aircraft can cover for a
given take off weight and quantity of fuel. On very long range flights, the
operator may have to shed cargo (or even passengers) in order to make the
required range.

Flight Time is a function of the route you take and how fast you go(!) For a
particular altitude / flight level and air temperature an aircraft has a speed
at which it is most fuel efficient. To go either faster or slower than this
will mean burning more fuel.

Cost is an accountants term and can mean whatever they want it to mean. It
typically includes fuel (rule of thumb - $100/tonne, a 747 burns 10 tonnes/hour
and 10% of fuel is burnt just carrying the other 90%); and overflight charges
(explained below). Other costs that may be included are engineering costs (some
components are “lifed” by flying hours), crew costs, costs per minute of delay
(or early arrival) and so on. Airlines will typically each have their own
measure of “cost” which they seek to minimise in producing a flight plan. These
range from the very simple (minimise cost of fuel used) to potentially very
complex calculations.

### Uh, What’s the Relationship between Altitude, Flight Level and Height?

Altitude is the absolute distance between the aircraft and either a notional
sea level (“above sea level”, ASL, or “Above Airfield Level”, AAL). In the days
before GPS, (which is still not widespread on aircraft), it was very difficult
to measure this absolute altitude anywhere above about 2,500 feet. What you can
do is measure the air pressure, which decreases with increasing altitude and
hence infer an absolute altitude.

Unfortunately, air pressure itself varies, that’s what those funny numbers like
988 and 1020 mean on weather charts. So what pressure should we assume means we
are sea level? Well, below a certain altitude, known as the “transition
altitude”, say, 4000 feet, we use the actual air pressure at sea level for
where we are. How do we know what this is? Because the airport will tell us,
either in conversation with the approach controller, or by listening to
automated weather broadcasts called ATIS. Each airfield has its own ATIS
frequency. For reasons that actually date back to the very early days of flying
and morse code, this sea level pressure is known as QFE.

Above 4000 feet, everyone uses the same assumption about sea level pressure,
known for the same reasons as above, as QNH. Above the transition altitude, all
aircraft set their gauges to 1021 millibars (or whatever it is) and uses that
to measure their altitude. These altitudes are usually quoted in multiples of
100 feet and are known as flight levels, e.g. Flight Level 370, means a
displayed altitude of 37,000 feet, assuming a fixed sea level pressure. This
means that as the actual pressure varies, all aircraft using QNH will fly at a
slightly lower, or slightly higher absolute altitude than that shown on their
instruments, however as all aircraft are acting in the same way, the difference
in their relative altitudes remains the same. An aircraft at flight level 370
will stay 2000 feet away from an aircraft at flight level 390, regardless of
how sea level pressure varies for real.

So what is height then? Oh, that’s how tall you are.

### Why Don’t They Just Fly in Straight Lines?

Well, for a start the Earth is round. A straight line on a flat map of the
world does not represent the shortest distance between any two points, the
shortest distance is actually the shorter of the two arcs of a great circle
which intersects both points.

However, Air Traffic Control do not let aircraft fly great circle routes as
this becomes an unmanageable mess of criss-crossing routes. In an apparently
paradoxical approach, ATC ensure that aircraft are kept apart by making them
all fly down the same airways. Imaginary lines (OK, great circle arcs) are
drawn on the map of the air, usually connecting radio navigation beacons. To
avoid head-on collisions aircraft will fly on odd or even thousands of feet
depending on their heading. To avoid head-on collisions when someone has cocked
up their altitude, aircraft normally fly offset from the centre line of the
airway; for example BA flight crew always fly two miles to the right of the
airway centre line. As well as controlling where and how high, ATC also control
the speed of aircraft to make sure they don’t run into the one in front. They
are normally given a Mach no. (say, 0.8mach) which they should not exceed.

In some parts of the world the airway system is relatively dense, giving lots
of options about where to fly. In other parts of the world, where there are
very few ground based navigational aids, the airway structure is
correspondingly less dense.

Just to complicate matters further, some airways are open at weekends only,
others can only be used in a particular direction. Large parts of the world’s
airspace are also set aside exclusively for military use; for example the Cold
Lake Training Area in Northern Canada covers an area about half the size of
Europe. With the end of the Cold War, some of this airspace is gradually being
returned to civilian use, often in the form of “Conditional Routes”. These come
in two forms, basically “you can use this route unless I tell you the day
before that you can’t”; and “you can’t use this route, unless I tell you on the
day that you can”. Messages to this effect are known as Conditional Route
Messages (CRM).

### Why Can’t we Just Fly the Shortest Airway Route?

So, given our globe spanning network of airways, why can not we simply choose
our route to be that chain of airways most closely approximating the great
circle arc? Wind – that is the problem. Jet aircraft have to burn more fuel
going against the wind, than they do flying with it, and this can be a major
influence. However, there are limits to this – hurricanes and tropical storms
appear to give very favourable tailwinds of 100+ knots, however they generally
engender a great deal of turbulence, which upsets the passengers and makes it
difficult for the captain to focus on his newspaper.

### So How do we Know What the Winds Are?

Fortunately, the Meteorological Office in Bracknell, and the US Weather Bureau
(I think) both have some very big and hugely expensive computers and lots of
weather stations. They use these to predict the wind speed, wind direction and
air temperature, at twenty different flight levels, on a grid of squares 2.5
minutes on a side (reducing as it approaches the poles), at four hour intervals
for the next 36 hours, twice a day. (Got all that?). In short, our tax pounds
(and dollars) pay for someone to tell us what the winds are. So What IS the
Shortest Route Then? Simply, the shortest route is the chain of pre-defined
airways that gives the shortest wind-distance between origin and destination.
The wind distance takes account of head and tail winds. For example, if you
have to fly for 600 ground miles into a 50 mph headwind at 600mph, the wind
distance will be 650 miles. The wind distance can be directly related to the
amount of fuel burnt.

### So That’s Our Route Then?

Not necessarily! There are two big factors causing exception to this, European
Flights and Over Flight Charges.

The majority of European Flights are obviously shorthaul. These are less
constrained by considerations of payload, fuel capacity and so on, and hence
not so concerned about wind distances. They are also operating the same sectors
up to 10 times each day. Rather than recalculate a new flight plan every time,
file it with ATC, request a slot and so on, airlines file a “repetitive flight
plan” at the start of each season. This basically says that every day, we will
fly this aircraft type along this route at this altitude, unless I tell you
otherwise. Usually these repetitive routes more or less follow the great circle
arcs. On the day of the operation the airline will calculate a “Fuel Plan”,
i.e. given the route, and the predicted wind speeds they can calculate the wind
distance and hence the amount of fuel that will be burnt.

Someone has to pay for the installation and maintenance of all these navigation
aids, the training of air traffic controllers, and all that. There is an
obvious source of funding here in charging the aircraft that pass overhead an
appropriate share of the cost, known as an overflight charge. Unfortunately,
some countries merely see this as a splendid wheeze to obtain foreign currency
to stash in Swiss Banks without actually providing an infrastructure (did
someone mention Zaire?) Even more reasonable countries have various ways of
pricing the use of their airspace, depending on the size of the aircraft, the
route they take, the time of day; and Brazil actually makes a distinction
between overflying land and ocean. On the day, there may be several different
routes that could be followed, which vary only slightly in their total wind
distance. Bringing overflight charges into the equation may favour one route
clearly above the others.

A further complication is that before you can overfly a country you need to
have prior permission to do so, known as an overflight clearance. Some
countries can be very fussy about this, insisting on knowing what entry points,
at what time and what aircraft type you are intending to use. Hence, part of
the route selection process must be to check the relevant permissions have been
obtained.

A secondary use of a flight planning system, in conjunction with a movement
control system and accounting system is to ensure that you have been correctly
billed for the over flights you have actually made.

### Is That our Route then?

Yes! Our flight plan route is the shortest wind distance chain of airways,
taking into account overflight permissions and charges. However, all of the
above has been a theoretical discussion. When trying to find the shortest
route, especially on a long haul flight, we suffer from what mathematicians
know as the “combinatorial explosion”. There are lots of airways, joined in a
complex network. Let us assume that the average length of an airway segment is
250nm, and that at the end of each airway there is a choice of three others. On
a sector of 5000nm there could be 3,486,784,401 distinct routes, each of which
could be flown at 10 different flight levels (and we can change level at any
time!).

There are mathematical techniques to “prune” this vast network of routes, to
something more manageable and hence create what is known as a “random route”.
Due to the computationally intensive nature of this, it is usually only done to
produce a “first stab” at the fixed routes, using a “average” set of winds
(known as “STAT MET”, and also available from your local meteorological
office). For example, when a new city pair comes on line, the flight planner
will typically generate a random route against the STAT MET, adjust it to take
account of overflight clearances and then create (by hand) variants of it (e.g.
variants north and south of a mountain range), to populate a database of fixed
routes.

Most flight planning systems require operators to define this set of fixed
routes between origin and destination, typically between 10 and 40 routes. The
flight planning system will calculate crude wind distances for each of them,
taking the top few to calculate in more detail, adding in overflight charges
and so on, to choose the best route. As well as making the planning problem
manageable, it also means that all of these routes can be pre-loaded in the
Flight Management System on the flight deck. The flight crew will then simply
need to key in the route number and flight level(s) and the auto-pilot is
programmed.

Now we really do have our route (albeit, possibly sub-optimal) It is now simply
a matter of calculating the fuel to be put on-board. Unfortunately, it is not a
simple process!

### How Much Fuel do we Need?

The amount of fuel loaded is made up of a number of sub-calculations:

- The fuel we expect to burn getting from the origin to the destination
- The fuel we expect to burn taxying to and from the gates
- Diversion fuel – sufficient to reach a nominated destination alternate, based on actual winds, holding for 15 minutes at 1500 feet, doing a go-around and landing
- Contingency Fuel -  some percentage of the total fuel so far
- Reserves – a final percentage of the total fuel so far, normally sufficient for 20 minutes flying time.
- Additional fuel, at the captain’s discretion

Despite the categorisation above, it is at the Captain’s discretion what the
fuel is actually used for; however the aircraft should, in normal operation,
never ever land with less than reserve fuel.

There are of course complications to the above, the two main ones being
tankering and ETOPS.

It may in some circumstances be desirable to carry sufficient fuel on board to
fly two or more sectors. This may be due to tight turnrounds, or the cost,
quality or availability of fuel at the destination. The extra fuel carried
(“tankered”) must be taken account of in calculating the take off weights, and
a certain proportion of it ( roughly 10% ) will be burnt just carrying it.
Proper consideration of tankering needs some means of obtaining the information
about fuel at destination airports which is not always easily available.

ETOPS (nearly) stands for Extended Range Twin Engine Operations Over Water and
is an additional set of flight planning requirements that must be taken
acccount of in generating the flight plan. Depending on the type of twin
engined aircraft, its operational record, the operators maintenance regime and
the equipment fit on the aircraft, it may be certified for operation over
water. Certification starts at 60 minutes and rises to 180 minutes, this being
the flying time to an available airfield, known as an en-route alternate (ERA).

Hence, in choosing the route, the flight planning system must ensure that the
aircraft never strays beyond that distance of available airports. Note that the
weather at the airport at the time of operation must be taken into account, and
that the landing category restrictions (basically visibility) are tighter for
the ERA than for the destination. For example if the aircraft is certified for
CATIIIA landings, the weather at the alternate, for the whole of the time it is
the closest alternate must be CATIIIB or better.

As well as checking the route is always in airfield range, the flight planning
system must also calculate Equal Time Points (ETPs) based on actual winds.
These are points at which two alternates are equidistant in flying time. At
these points the system must confirm that there is sufficient fuel on board to
fly to the airfields, on one-engine, at 8000 feet, with the gear down (I
think). If there is insufficient fuel, the system must assume more is loaded at
the origin and do the calculations again, iterating until the required
conditions are met. ETOPS flight planning can be quite complicated, however it
is becoming increasingly necessary. Airline economics are driving towards twin
engined aircraft for long, thin routes and the removal of fire cover from
Frobisher Bay in Newfoundland means that it is no longer possible to cross the
Atlantic on a two engined aircraft without using ETOPS.

Having done all of the above, we do, finally have a flight plan.

What Else Haven’t You Told Me?

Well, there are just one or two additional complications….

### Aircraft Weights

An aircraft has a published “maximum payload” figure, but this is not always
achievable. It will also have a “maximum fuel load” figure and the two in
combination, added to the dry weight of the aircraft may exceed the Maximum
Take Off Weight (MTOW). This gives some leeway in choosing to carry either fuel
or payload. There is also a Maximum Gross Weight (MGW) which is usually a
couple of tons higher than MTOW to take account of fuel burnt taxying to the
end of the runway. The weight of the aircraft determines the take off speeds
(V1, V2, Vr) and hence, given the acceleration possible, the length of runway
needed. This in itself depends on the material of the runway, its slope and the
weather conditions. Any of these factors may reduce the permissible MTOW for a
particular flight, on the day. A further minor complication is that aircraft
are taxed (and some overflight charges are set) depending on the MTOW; some
operators register (and load) their aircraft at an MTOW less than the
manufacturers quoted figure.

Similarly, there is a Maximum Landing Weight figure (MLW). Actually I think
there are two, a lower one meaning that a “heavy landing check” is required by
the engineer before the aircraft can fly again; and a higher figure meaning
“you will push the landing struts up through the wings". Again, the Maximum
Landing Weight may be adjusted by the weather and runway conditions at the
destination airport. Some runways can take only a certain load, and a short
runway implies a short time for deceleration and hence a reduced landing
weight. Aircraft may have to dump fuel in order to achieve their landing
weight, especially in the case of an airborne return. The SwissAir MD-11 was
carrying out this procedure prior to landing at Halifax when it disappeared
from radar screens.

### Flexitracks

There are no ground based navigation aids over the ocean, so how does the
airway system work? Twice daily, the Oceanic Control Centre will issue North
Atlantic Tracks (NATs) which are a set of routes between a north / south line
of fixed points joined to the airways system on each side of the Atlantic –
just off the west coast of Ireland and Scotland on the European side, and off
the coast of Canada on the North American side. The routes between the fixed
points are a set of “notional” waypoints every 10 degrees of longitude. They
are chosen to minimise the wind distance and airlines are free to calculate
their own preferred tracks and send them to the Oceanic Control Centre. They
take a consensus view and issue between 6 and 10 tracks, normally westbound in
daylight and eastbound over night. A similar process happens for the Pacific
(known as PACOTS – Pacific Organised Track System).

A flight planning system must be able to accept these tracks as input and use
them in generating flight plans. Note that if Reykjavik is closed, some of the
northernmost tracks may not be available for ETOPS flights, and similarly
southern tracks may not be available if Lajes, in the Azores is closed.

### Shortcuts

Sometimes, ATC are nice to you and will let you fly a “direct”. This means that
they will let you fly off-airway for a while, for example to cut-off a dog-leg
corner and hence get a shorter route. Similarly, a CRM (remember those?) may
suddenly make an airway available after departure, shortening your route.
Unfortunately, you cannot make assumptions about directs and things in
calculating your fuel requirements, you must assume that you fly the full
length of the route.

In fact, the Americans are so nice to you, they will let you choose your own
shortcuts, in something known as the “National Routes Program” (NRP). In this
you can request your own directs, provided that they are not more than 200nm
long. These can be requested as part of the flight plan, and provided the plan
is approved you can of course take account of them in calculating your fuel
requirements. Most flight planning systems can’t really take full advantage of
the NRP and it is usually handled by putting lots “dummy” airways into the
airway structure of North America, wherever they look useful.

### Reclearance Flight Plans

You don’t need to know about these. In the bad old days, when wind forecasts
were less accurate and aircraft weren’t as efficient, you often couldn’t
generate a valid flight plan from say, Jo’burg to London, so you would file one
from Jo’burg to Madrid. On the way you might get some “directs”, and the winds
might be better than expected such that you could recalculate your plan and
demonstrate that you now had sufficient fuel to make it all the way to London.
These are unpopular with just about everybody (especially the flight crew as it
meant a lot of work for them) and becoming much less common.

### The AIRAC Cycle

Navigation aids are added and removed, frequencies changes, new airways are
opened, even new airports. To manage this process, the aviation world works to
a 4 weekly cycle known as AIRAC. Every 4th Wednesday, at midnight GMT a new set
of navigation data comes into operation. Obviously, there are procedures to
cope with short term and un-scheduled outages, but in general most changes
happen in line with the AIRAC cycle. This data must also be loaded into the
aircraft FMS, although it is usually done at the next rotation through a main
base, not exactly at GMT midnight.

### Aircraft Equipment Failures

All of the above discussion assumes aircraft are perfectly functional. In
reality bits and pieces break on them all the time. Some things that get broken
will have an influence on the flight plan. For example, a broken air
conditioning pack may impose an altitude ceiling of 30,000 feet; a stuck thrust
reverser may require an additional 1.5% of trip fuel; navigation equipment
failure may reduce ETOPS certification from 180 to 120 minutes and so on.

Taking account of these in a flight planning system implies real time access to
aircraft defect records and a database of their effects.

### True Free Flight

As well as being unpronounceable after a few beers, True Free Flight is the
future of flight planning. The airway system can be ignored and operators can
plan their aircraft wherever they like. ATC will run a “conflict probe” against
all the other free flights they know about and will in effect give you the
exclusive use of a 4 dimensional “bubble” of airspace leading from your origin
to your destination to your destination during a given time. Of course trying
to plan one of these given so many degrees of freedom just gives you a
combinatorial problem in spades….

Fortunately, this is some years away, although there are some trials in
progress. It does require aircraft to be able to navigate to a very high degree
of precision, and also relies on Automatic Dependant Surveillance (ADS). In
this scheme, rather than ATC looking at radar screens to figure out where you
are, you will tell ATC by bouncing position reports off a satellite. This
avoids the need for a costly ground infrastructure at all, and is likely to be
the way of the future. Watch this space.

### My Head Hurts….Can you Summarise?

Hmmm, let’s see…

Flight planning is specialised, complicated, needs lots of system integration.
Get someone else to do it for you!

Karl R Wilcox
21st July 1999
