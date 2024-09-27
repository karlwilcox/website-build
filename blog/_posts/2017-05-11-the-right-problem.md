---
layout: article
comments: true
title: "The Right Problem"
subheadline: ""
teaser: "Thoughts and Ramblings"
tags:
  - productivity
---
# Are You Solving the Right Problem?

{% include figure src="/img/blog/timer-example.png" caption="Example timer use" align="centre" %}

That may seem like a dumb question but consider this recent chain of events:

*   I needed to test some WordPress plug-in updates on my staging server before putting them live
*   That’s odd - the remote desktop connection to my VirtualBox host wasn’t working...
*   I could connect by SSH and plugging in a monitor showed that X was working...
*   (Looked into log files) Ah, the vino-server wouldn’t start becuase it thinks it is already running...
*   Must be a lock file problem, wonder if there’s anything on the Ubuntu forums...
*   (30 minutes passed...)

Can you see the issue here? The actual problem that I wanted to solve was described in the first line, _**everything**_ after that point was actually irrelevant. At that time the problem with the remote desktop didn’t matter - I could have used either the SSH command line or the VirtualBox GUI on the monitor to start my staging server and test the plug-ins, something that should have taken 10 minutes or less. And that kind of thing happens to me a **_lot_**. So, I start a task to address a particular problem, and after some arbitrary time I find that I am one of the following states:

1.  The problem is solved and I have moved on to something else.
2.  I am still working on that task, and making progress on the problem.
3.  I am still working on that task, but struggling and probably frustrated, the problem is not really being solved.
4.  I have wandered so far off course that I can’t even see what the original problem is...

Hence, here is my personal task management proposal (which ties into my earlier post about journalling everything I do). 
I will write in my journal a brief sentence explaining what problem I’m intending to tackle, with maybe a second sentence 
on the approach I am proposing to take. Then I start a timer - somewhere between 15 and 60 minutes depending on the task. 
Some IDEs, for example NetBeans have a timer function (see the screenshot above), or if I’m working on something else I 
have a timer App that lives on my menu bar, or could just use my watch. And when that timer interrupts I just answer the 
question “Are you working on the right problem?” (The one that you wrote down earlier). This may seem like an annoyance 
but in my life those four outcomes are equally likely, so consider what could happen in each case:

1.  Problem solved, moved on - but have I moved on to the right _next_ problem to address?
2.  Still working - possibly annoying but hey, restart that timer.
3.  Struggling - should I take a break, or move on to something else? It is amazing how often the solution appears when you stop thinking about it!
4.  It is time to stop and restart the real task.

In three out of four cases the timer interrupt and the question are helpful and highly likely to keep me on track; 
and in the fourth just restart the timer with a longer
period. Will this work for everyone? Obviously not, but I’m going to try to adopt this as a discipline and see 
how effective it is for me. I can also see ways to build
on this, especially if the problem involves coding. If using git for version control some suggest branching 
and merging often, even several times a day.
That sounds like a perfect fit for this discipline - define the problem, create a git branch, do the task, merge the branch. 
My timer has just gone off - I’ve completed the task “write article post”. Now what is right, next problem that I need to address...