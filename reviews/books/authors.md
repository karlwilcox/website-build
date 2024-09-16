---
layout: review-list
---

# List of Major Authors

{% for author_data in site.data.authors %}
{% capture author_ref %}{{ author_data }}{% endcapture %}
{% assign url_part = author_ref | split: '{' | first %}
- [{{ author_data[1].forename }} {{ author_data[1].surname }}](/author/{{ url_part }}/)
{% endfor %}


