# Some simple tasks, that always run

SHELL := /bin/bash
.ONESHELL:

# the default action is to build the site locally
build: thumbs
	bundle exec jekyll build
	
test:	
	rsync --delete -e "ssh -i ~/keys/mini-server" -avP /Volumes/Data/Sites/karlwilcox/ karlw@192.168.1.10:/home/karlw/sites/karlwilcox

clean:
	bundle exec jekyll clean

deploy:
	rclone sync -u -v /home/karlw/sites/karlwilcox/ kw-site:/public_html

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
			convert -define jpeg:size:400x400 $$i -thumbnail '200x200>' -background white -gravity center -extent 200x200 $$dir/thumbs/$${base}.jpg
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
				convert -define jpeg:size:400x400 $$f -thumbnail '200x200>' -background white -gravity center -extent 200x200 thumbs/$$f
			fi
		done > /dev/null
		popd > /dev/null
	done
