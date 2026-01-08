---
layout              : page
title               : "A Text Analysis of the Blazon Corpus"
subtitle         : ""
teaser              : ""
header:
   image_fullwidth  : heraldy/header.png
permalink           : "heraldry/corpus-analysis/"
---

In this paper we discuss some simple textual analysis of a blazon corpus. In 1894 James Parker published a book called “a glossary of terms used in heraldry”. Between 2000 and 2004 the complete text of this book was converted into HTML by “Saitou” and Jim Trigg. In 2011, I updated HTML code to current standards. Part of this process included locating and modifying the example blazons that were in the text – during these activities and extract was made of the complete set.

This set comprises 4611 separate blazons, the majority in English, with an estimated 5% in French. The complete set is available for download in various formats by following the links at the end of this article. From here on I will refer to this set of blazons as the “Parker Corpus”.

Before we subject this corpus to analysis we must consider whether it constitutes a representative set from the population of all blazons. Parker chose these blazons individually in order to illustrate a particular feature of the old language – almost every dictionary entry has at least one blazon example. The dictionary contains over 2000 entries including some quite rare terms, hence you must acknowledge that of course some of the blazons will also contain those rare terms. A randomly chosen subset taken from “all blazons” would not be expected to cover such a broad range of terms as is found in the Parker corpus. However I believe that the sheer number of blazons is sufficient to provide source material for textual analysis.

The first such analysis that we will carry out is a very simple word frequency investigation. The process we will use is as follows:

For each blazon in the corpus:

*   Remove all text surrounded by square brackets (Parker used this convention to note particular features, the text in brackets does not form part of the blazon itself)
*   Replace all hyphens with spaces (this has the effect of separating words into their component parts, it could be argued that perhaps they should be left as complete words, and a possible future investigation may compare this approach with that taken here)
*   Remove all other punctuation marks
*   Split the blazon into individual words, and convert all words to lowercase
*   Create a frequency table for each word

Note that no attempt has been made here to group singular words with their plurals and thus “lion” and “lions” have been counted separately.

This analysis shows that the Parker corpus contains 4324 different words, of which 2176 appear only once. It is this second number that I would expect a much lower in a truly representative sample – this reflects the need of Parker to give example blazons containing obscure terms.

The resulting frequency table can also be downloaded from the links at the bottom of the article, but the 100 most frequent items are shown in the table below, the number of appearances shown in brackets.


|     |     |     |     |     |
| --- | --- | --- | --- | --- |
| **1 - 10**<br><br>a (4972)<br><br>argent (3053)<br><br>or (2171)<br><br>three (2114)<br><br>the (2023)<br><br>gules (1968)<br><br>of (1672)<br><br>and (1567)<br><br>sable (1530)<br><br>in (1491) | **11 - 20**<br><br>azure (1423)<br><br>between (1230)<br><br>on (1145)<br><br>two (855)<br><br>chief (716)<br><br>proper (695)<br><br>de (681)<br><br>chevron (592)<br><br>fesse (545)<br><br>with (514) | **21 - 30**<br><br>vert (471)<br><br>cross (398)<br><br>an (373)<br><br>second (329)<br><br>bend (326)<br><br>pale (309)<br><br>lion (302)<br><br>ermine (294)<br><br>base (290)<br><br>first (282) | **31 - 40**<br><br>per (258)<br><br>rampant (246)<br><br>all (224)<br><br>dor (211)<br><br>last (205)<br><br>passant (205)<br><br>dexter (203)<br><br>saltire (198)<br><br>as (192)<br><br>sinister (190) | **41 - 50**<br><br>each (186)<br><br>heads (185)<br><br>dargent (184)<br><br>six (177)<br><br>engrailed (158)<br><br>four (158)<br><br>one (153)<br><br>many (152)<br><br>charged (149)<br><br>within (145) |
| **51 - 60**<br><br>couped (145)<br><br>head (133)<br><br>bars (132)<br><br>erased (131)<br><br>over (127)<br><br>bordure (118)<br><br>et (117)<br><br>wavy (114)<br><br>by (113)<br><br>at (112) | **61 - 70**<br><br>counterchanged (111)<br><br>third (111)<br><br>trois (110)<br><br>quarterly (109)<br><br>erect (104)<br><br>goules (99)<br><br>canton (98)<br><br>gueules (97)<br><br>field (97)<br><br>five (95) | **71 - 80**<br><br>tree (93)<br><br>dazur (93)<br><br>holding (92)<br><br>barry (90)<br><br>mount (88)<br><br>lions (86)<br><br>point (81)<br><br>lis (79)<br><br>displayed (78)<br><br>le (77) | **81 - 90**<br><br>to (76)<br><br>points (75)<br><br>armed (75)<br><br>wings (74)<br><br>mullets (74)<br><br>from (74)<br><br>slipped (73)<br><br>eagle (71)<br><br>hand (69)<br><br>leaves (69) | **91 - 100**<br><br>au (68)<br><br>crosses (68)<br><br>en (67)<br><br>side (66)<br><br>ung (64)<br><br>surmounted (63)<br><br>his (62)<br><br>roses (61)<br><br>double (60)<br><br>gold (60) |

We can also manually inspect this list and extract words from particular categories. For example, the most frequently occurring tinctures are as follows:

1.  argent (3053)
2.  or (2171)
3.  gules (1968)
4.  sable (1530)
5.  azure (1423)
6.  proper (695)
7.  vert (471)
8.  ermine (294)
9.  d'or (211)
10.  d'argent (184)
11.  counterchanged (111)
12.  goules (99)
13.  gueules (97)
14.  d'azur (93)
15.  gold (60)


A further refinement of this investigation would be to move the French blazons to a separate corpus as some of those terms in the list above are from the French, however I don’t believe this will significantly change the rankings.

We can carry out a similar exercise for ordinaries, shown here:

1.  chief (716)
2.  chevron (592)
3.  fesse (545)
4.  cross (398)
5.  bend (326)
6.  pale (309)
7.  base (290)
8.  saltire (198)
9.  bars (132)
10.  bordure (118)
11.  canton (98)
12.  barry (90)

Unfortunately with this rather crude analysis we can’t do the same for charges as these are frequently multi word terms, although we can note the relatively high frequencies of <em>lions</em>, assorted <em>heads</em>, <em>trees</em> and <em>mullets</em>. Similarly, most divisions and treatments consist of multiple words and this analysis does not group them appropriately.

Another of the authors projects, the DrawShield suite is currently being rewritten, and the first stage of this the blazon parser is almost complete. This parser is able to read the complete blazon and break it down into a hierarchy of component parts. This tool will be able to carry out a much more sophisticated and detailed analysis of all blazon features, and a future paper will report on this.

I hope this paper has proved interesting and I look forward to presenting results of my further investigations.

## Download Links

Please feel free to download these resources and use them as required in your own work. 

[The Parker Corpus as a CSV File](/heraldry/parker-corpus.csv) 

[The Parker Corpus as an Excel (.xls) Spreadsheet File](/heraldry/parker-corpus.xls) 

[Word Frequencies](/heraldry/wordfreq.csv)