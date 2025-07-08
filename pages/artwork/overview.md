---
layout              : artwork
title               : "Artwork"
subheadline         : "A Miscellany of Mediocre Art"
teaser              : "Mediocrity in many media"
header:
   image_fullwidth  : "headers/art-materials.jpg"
permalink           : "/artwork/overview/"
---

Over the years I have dabbled in various art media and quite enjoyed it, although
I can't lay claim to any great talent or artistry. I have collected the best of
my work here, not in the expectation that it will ever adorn anyone's wall (or
desktop background) but largely as a reminder and inspiration to myself to keep
producing new work as it is fun, and good for mental well-being.

And if any of it does inspire any readers to develop their own creations then
that is a pleasant bonus!

![Sample](/img/headers/art-materials.jpg){: #sample}

<script>
function setSample() {
   const imgs = [
      {% for img in site.data.artwork -%}
               "{{ site.urlimg }}/{{ img.thumb_url }}",
      {%- endfor %}
   ];
   var chosen = Math.floor(Math.random() * imgs.length);
   document.getElementById("sample").setAttribute('src', imgs[chosen]);
}
setSample();
</script>

Artworks are presented in galleries of thumbnails like the (non-functional) example
above. Click on any of the thumbnails to see a larger version and a brief description.

## Images by Media

I have organised the work by various categories (so you will see duplicates if 
you visit every page here). Here is a list of pages showcasing the various
different media that I have tried out:

* [3D Renderings](/artwork/3D-rendering/)
* [Digital Painting](/artwork/digital-painting)
* [Line Drawings](/artwork/line-drawings/)
* [Marker Pens](/artwork/marker-pen)
* [Painting](/artwork/painting)
* [Pencil](/artwork/pencil)
* [OU Doodles](/artwork/ou-doodles)
* [Studio Ghibli Characters](/artwork/ghibli)

## Images By Subject

* [Science Fiction](/artwork/sci-fi/)
* [Architecture](/artwork/architecture)
