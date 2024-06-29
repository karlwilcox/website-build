# Some simple tasks, that always run

SHELL := /bin/bash
PATH := /home/karlw/gems/bin:$(PATH)
# the default action is to build the site locally
build:
	source ~/.bashrc && bundle exec jekyll build

clean:
	bundle exec jekyll clean

deploy:
	rsync --delete -e "ssh -i ~/keys/aws-karlwilcox.pem" -avP /var/www/karlwilcox/ bitnami@karlwilcox.com:/opt/bitnami/apache/htdocs
