# Some simple tasks, that always run

SHELL := /bin/bash
.ONESHELL:

# the default action is to build the site locally
build: thumbs
	bundle exec jekyll build
	echo forcing page asset copy
	(cd pages; find . -path ./pages-root-folder -prune -o -type f -not -name "*.md" -not -name "*.html" -print | cpio -pd /Users/karlw/Sites/ \; )
	chmod -R go+r /Users/karlw/Sites
	echo -n "Completed at: "
	date
	
# Not needed on the mini-server itself
test:	
	rsync --delete -e "ssh -i ~/keys/mini-server" -avP /Users/karlw/Sites karlw@192.168.1.10:/home/karlw/sites/karlwilcox

clean:
	bundle exec jekyll clean

deploy:
	rclone sync -c -v /Users/karlw/Sites kw-site:/public_html

gallery: do_gallery
.PHONY: gallery

# Usage:
#   On the command line 'target=path/to/folder make gallery' will scan the named folder for images,
#   create thumbnails and echo a markdown gallery using the file names as captions.
#   This can be pasted into the top matter of the target file and {% include gallery %} inserted where required.
do_gallery:
	echo "gallery:"
	mkdir -p $(target)/thumbs 
	/bin/rm -f  $(target)/thumbs/*-thumb.{jpg,png,jpeg}
	for i in $(target)/*;
	do
		file="$${i##*/}"
		dir="$${i%/*}"
		ext="$${file##*.}"
		base="$${file%.*}"
		caption=( $${base//-/ } )
		if [[ $$ext == 'png' || $$ext == 'jpeg' || $$ext == 'jpg' ]]
		then
			echo "    - image_url: $${i:4}"
			echo "      caption: $${caption[@]^}"
			echo "      thumb_url: $${dir:4}/thumbs/$${base}.jpg"
			echo "      tags: "
			magick -define jpeg:size:400x400 $$i -thumbnail '200x200>' -background white -gravity center -extent 200x200 $$dir/thumbs/$${base}.jpg
		fi
	done
	
do_artwork:
	echo "folder?"
	read target
	mkdir -p $${target}/thumbs 
	/bin/rm -f  $${target}/thumbs/*-thumb.{jpg,png,jpeg}
	for i in $${target}/*;
	do
		file="$${i##*/}"
		dir="$${i%/*}"
		ext="$${file##*.}"
		base="$${file%.*}"
		caption=( $${base//-/ } )
		if [[ $$ext == 'png' || $$ext == 'jpeg' || $$ext == 'jpg' ]]
		then
			echo "    - image_url: $${i:4}"
			echo "      caption: $${caption[@]^}"
			echo "      thumb_url: $${dir:4}/thumbs/$${base}.jpg"
			echo "      tags: "
			magick -define jpeg:size:400x400 $$i -thumbnail '200x200>' -background white -gravity center -extent 200x200 $$dir/thumbs/$${base}.jpg
		fi
	done

thumbs: do_thumbs
.PHONY: thumbs

do_thumbs:
	echo "thumbs:"
	for dir in tvshows movies books other games
	do
		pushd img/reviews/$$dir > /dev/null
		mkdir -p thumbs
		for f in *.jpg
		do
			if [ ! -e thumbs/$$f ]
			then
				magick -define jpeg:size:400x400 $$f -thumbnail '200x200>' -background white -gravity center -extent 200x200 thumbs/$$f
			fi
		done > /dev/null
		popd > /dev/null
	done

newpage:
	echo -n "Location? "
	read location
	echo -n "Filename? (index) "
	read filename
	echo -n "Title? "
	read title
	echo -n "Sidebar? "
	read sidebar
	if [[ -n $$filename ]]; then permalink="/$$location/$$filename/"; else permalink="/$$location/"; filename="index"; fi
	mkdir -p pages/$$location
	output="pages/$$location/$$filename.md"
	touch $$output
	echo -e "---\nlayout\t\t\t: page\ntitle\t\t\t: \"$$title\"" >> $$output
	echo -e "teaser\t\t\t: \"\"\nheader:\n    image_fullwidth\t: \"gp-header\"" >> $$output
	echo -e "subheadline\t\t: \"\"" >> $$output
	echo -e "permalink\t\t: $$permalink" >> $$output
	echo -e "comments\t\t: true" >> $$output
	if [[ -n $$sidebar ]]; then echo -e "sidebar\t\t\t: $$sidebar"; fi >> $$output
	echo -e "---\n\n(Placeholder)" >> $$output
