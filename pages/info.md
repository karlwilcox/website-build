---
layout: page
title: "Info"
subheadline: "Site Credits"
teaser: "I'd like to thank all the creators and developers whose work I'm building on here."
permalink: "/info/"
header:
    image_fullwidth: "headers/info.jpg"
---

## Tools

The site consists entirely of static pages created using the [Jekyll][1]] Static Site Generator. Development
work is carried out a Mini-PC running [Pop!OS][2], for text editing I use IntelliJ Idea from [JetBrains][3]
with the IdeaVim(*) plugin and a colour theme that I can't seem to settle on and changes every few weeks.

(*) The first editor I learned to use, some 40 years ago, was Vi and the muscle memory is too ingrained to change now!

The build system is the Linux 'make' command with some embedded bash scripts to do things like thumbnail generation.

The page theme is [FEELING RESPONSIVE][4] by phlow.

For articles and general topic pages images, diagrams, photographs etc. are my own work unless otherwise stated. I use the various tools provided by
[Affinity Software][5] for image preparation and diagram creation.

For the reviews images are generally taken from the usual sources - amazon.com, imdb.com, youtube.com or the sites of the
various studios or publishers. I haven't provided individual attribution for these, sorry, but life is short and I'm
sure that the organisations involved are big enough to handle the unintended copyright violations.

## Hosting

As above, development work is done on my Pop!OS Linux Mini-PC which hosts multiple test versions of 
my various websites each on a different IP addresses.

The live website is hosted by Amazon Web Services on a tiny [LightSail][6] instance but since it is only
static pages both performance and storage are adequate.

## File Organisation

(The following information is largely for my own use and unlikely to very interesting to anyone else)

### Articles

Created under blog/_posts, using the article template. Articles have no header image
so add as required using 'include figure' in the body. You can provide a thumbnail
with 'thumb: file.jpg' in the front matter, this will be looked for in /img/blog.
A fall back is provided if required.

### Reviews

Created in the reviews/&lt;category&gt;/_posts folder using the reviews template. Header
image is added automatically based on the post slug, just put it in /img/reviews/&lt;category&gt;/
with a name that matches the slug and ends in .jpg. Thumbnails are generated automatically. A fall back
image is provided if required.

The naming convention is that we use the full name of the item being reviewed using dashes instead
of spaces but removing any initial "a-" or "the-". TVshows shoule have -sN appended, where N is the
number of the season.

Frontmatter should be as follows:

- layout: review
- title: Full title, including 'a' or 'the'
- author: (Books only) key-to-_data/authors.yml
- subheadline: 
  - For books, free format author name (ignored if the author field is present)
  - For movies & tv shows, the streaming platform and / or studio
  - For shorts, the full date range as text
  - For games, the platform
  - For other, free form explanation
- teaser:
  - For books, the series (if any)
  - For movies, the series (if any)
  - For tvshows, the season (if any)
  - For games / other, free form as required
- tags: as required
- category: one of tvshows / movies / other / books / shorts / games

(This last should be redundant but it simplifies the pagination)

### Other Pages

Created in an appropriately named folder under pages, you can have any
organisation that you like but need to provide the permalink
in the frontmatter and your own navigation;
either by manually including links or defining your own
layout in _layouts. Additionally you will need top level
links to your new pages in _data/navigation.html, usually
under 'Projects' or 'Interests'.

All contents are automatically included in the search index.

Comments are disabled unless you put comments: true in the
front matter of each page, or in the defaults section of
the _config.yml file.






 [1]: http://jekyllrb.com/
 [2]: https://pop.system76.com/
 [3]: https://www.jetbrains.com/
 [4]: http://phlow.github.io/feeling-responsive/
 [5]: https://affinity.serif.com/
 [6]: https://aws.amazon.com/lightsail/