---
layout: review
title: "Great Post Office Scandal"
prefix: "The"
subheadline: "Nick Wallis"
teaser: ""
tags:
  - "crime"
  - "history"
---

This is an important book that I read well before the TV show was made as I knew
at least some of the Fujitsu characters at lease peripherally and I was interested
to know what the actual IT problems were.

Inevitably (and importantly) the book did focus on the human stories, although there
was a comment near the beginning from a Fujitsu engineer about the bid-winning
demonstrator being a cobbled-together prototype that was ill-advisably pushed
into production, but this comment never seemed to be followed up anywhere.

The court cases and enquiry documents that are referenced from this did provide some
of the technical detail that I was after, explaining some of the actual bugs, which
were mostly, typically mundane things that we programmers create and try to deal
with every working day, and were almost inevitable in such a massively complex system.

Examples I came across were things like failure to keep transactions "atomic" in the
event of communication failures (leading to the re-issue of transaction ids);
synchronisation errors for remote systems (both within branches and to the back-end
systems); and perhaps most insidious of all, a bug within a third party transaction
processing package - although this last might be considered a failure of testing
and due diligence with suppliers.

Again, quite rightly all of this technical detail was waved over in the TV drama
in order to concentrate on the appalling human cost and it was a shame on us all
that it took the TV show to generate any sense of urgency towards justice.

Perhaps when the enquiries have concluded and recompense payments made there is
another, somewhat shorter book to be written about what lessons we as IT folk
can learn from this as well.
