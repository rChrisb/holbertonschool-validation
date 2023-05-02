build:  ## publish the site
	hugo

clean:  ## empties the dist directory
	rm -rf dist/*

post:  ## Add a new page to your site with a specific title
	hugo new posts/$(POST_NAME).md
	sed -i "s/title: .*/title: \"$(POST_TITLE)\"/" content/posts/$(POST_NAME).md

help: ## Prints out the list of targets and their usage
	@grep "##" Makefile | grep -v grep | sed "s/##//"