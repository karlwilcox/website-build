---
#
# Use the widgets beneath and the content will be
# inserted automagically in the webpage. To make
# this work, you have to use › layout: frontpage
#
layout: frontpage
header:
  image_fullwidth: headers/front-page.jpg
widget1:
  title: "About Me"
  url: '/about-me/biography/'
  image: widgets/about-me.jpg
  text: "Hi! I'm Karl, an educator, web developer and a bit of a nerd. You can find a bit more about my background here, and my hobbies and interests elsewhere on the website."
widget2:
  title: "Projects and Interests"
  url: '/interests/'
  text: 'I start lots of things, and have ideas in all sorts of directions, some of which I document in the pages here. Under the "Projects" menu you will find things I am currently working on; under "Interests" are things I have finished or information that I have collected'
  image: widgets/projects.jpg
widget3:
  title: "Reviews"
  url: '/reviews'
  image: widgets/reviews.jpg
  text: 'I read a lot of books, watch films and TV shows and play the odd computer game. I like to make a few notes on all the media I consume so I thought it might be nice to share these with you. You may not agree with my assessments, but that is fine!'
gallery:
  - image_url: fp-gallery/cathedral.jpg
  - image_url: fp-gallery/Beach-Resort-Daytime.jpg
  - image_url: fp-gallery/Authority-Figure.jpg
  - image_url: fp-gallery/busy-city.jpg
  - image_url: fp-gallery/Entrance.jpg
  - image_url: fp-gallery/venus-sky-base.jpg
  - image_url: fp-gallery/tall-city.jpg
  - image_url: fp-gallery/Buttress.jpg
#
# Use the call for action to show a button on the frontpage
#
# To make internal links, just use a permalink like this
# url: /getting-started/
#
# To style the button in different colors, use no value
# to use the main color or success, alert or secondary.
# To change colors see sass/_01_settings_colors.scss
#
callforaction:
  url: /contact
  text: Get in touch with Karl... ›
  style: alert
permalink: /index.html
#
# This is a nasty hack to make the navigation highlight
# this page as active in the topbar navigation
#
homepage: true
---

<h2>Artwork Sampler</h2>

And here's some pictures, more under the "Interests => Artwork" menu entry above.

{% include gallery %}
