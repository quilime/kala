dev:
	bundle exec jekyll serve --livereload

publish:
	echo "Building..."
	rm -rf _site
	bundle exec jekyll build
	echo "Syncing..."
	rsync -varz _site/ sift@elev.us:/home/sift/kala.elev.us/public --delete
