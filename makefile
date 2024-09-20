# Some simple tasks, that always run

SHELL := /bin/bash
.ONESHELL:

# the default action is to build the site locally
build:
	bundle exec jekyll build

clean:
	bundle exec jekyll clean

deploy:
	rsync --delete -e "ssh -i ~/keys/aws-karlwilcox.pem" -avP /var/www/karlwilcox/ bitnami@karlwilcox.com:/opt/bitnami/apache/htdocs

gallery: do_gallery
.PHONY: gallery

# Usage:
#   On the command line 'target=path/to/folder make gallery' will scan the named folder for images,
#   create thumbnails and echo a markdown gallery using the file names as captions.
#   This can be pasted into the top matter of the target file and {% gallery %} inserted where required.
do_gallery:
	echo "gallery:"
	/bin/rm -f  $(target)/*-thumb.{jpg,png,jpeg}
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
			convert -define jpeg:size:400x400 $$i -thumbnail '200x200>' -background white -gravity center -extent 200x200 $$dir/$$base-thumb.$$ext
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
		done
		popd > /dev/null
	done
