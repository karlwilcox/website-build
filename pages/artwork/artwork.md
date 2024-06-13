---
layout              : page
title               : "Artwork"
subheadline         : "A Miscellany of Mediocre Art"
teaser              : "I can be not great in so many media..."
header:
   image_fullwidth  : "gp-header"
permalink           : "/artwork/"
---

Here's a list of all the media areas I have worked in:

{% for file in site.pages %}
    {% if file.path contains 'pages/artwork/' %} 
* [{{ file.title }}]({{ file.permalink }})
    {% endif %}
{% endfor %}

