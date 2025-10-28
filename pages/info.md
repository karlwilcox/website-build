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

The site consists entirely of static pages created using the [Jekyll][1]
Static Site Generator. Development work is carried out on my Mac Mini M4 Pro
with a Studio Display while the build and test site hosting is carried out a
Mini-PC running [Pop!OS][2]

As an IDE I use VSCode with the IdeaVim plugin and a colour theme that I can't
seem to settle on and changes every few weeks. (Vi was first editor I learned
to use, some 40 years ago, and the muscle memory is too ingrained to change
now!) I use the various tools provided by [Affinity Software][3] for image
preparation and diagram creation.

The build system is the Linux 'make' command with some embedded bash scripts to
do things like thumbnail generation.

The page theme is [FEELING RESPONSIVE][4] by phlow.

## Copyrights

All written content is my original work, unless otherwise stated and remains
copyright Karl R. Wilcox 2025.

For articles and general topic pages images, diagrams, photographs etc. are my
own work unless otherwise stated.

For the reviews images are generally taken from the usual sources - amazon.com,
imdb.com, youtube.com or the sites of the various studios or publishers. I
haven't provided individual attribution for these, sorry, but life is short and
I'm sure that the organisations involved are big enough to handle the
unintended copyright violations.

## Hosting

As noted above, my Pop!OS Linux Mini-PC hosts multiple test versions of my
various websites each on a different IP addresses.

The live website is hosted by UKHost4u on a Virtual Private Server. The site is entirely static,
with just HTML, CSS, JavaScript and image files.

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

### Other Pages

Created in an appropriately named folder under pages, you can have any
organisation that you like but need to provide the permalink in the frontmatter
and your own navigation; either by manually including links or defining your
own layout in \_layouts. Additionally you will need top level links to your new
pages in \_data/navigation.html, usually under 'Projects' or 'Interests'.

All contents are automatically included in the search index.

Comments are disabled unless you put comments: true in the front matter of each
page, or in the defaults section of the _config.yml file.

 [1]: https://jekyllrb.com/
 [2]: https://pop.system76.com/
 [3]: https://affinity.serif.com/
 [4]: https://phlow.github.io/feeling-responsive/