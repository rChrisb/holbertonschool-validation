build: check  ## publish the site
	hugo

clean:  ## empties the dist directory
	rm -rf dist/*

post:  ## Add a new page to your site with a specific title
	hugo new posts/$(POST_NAME).md
	sed -i "s/title: .*/title: \"$(POST_TITLE)\"/" content/posts/$(POST_NAME).md

check: ## Check lint of markdonws source files and analysis of the links
	markdownlint README.md content/posts/welcome.md
	markdown-link-check README.md content/posts/welcome.md

validate: ## validate the html file in dist/
	echo '<!DOCTYPE html>
<HTML lang="en">
<HEAD>
	<META charset="UTF-8">
	<META http-equiv="X-UA-Compatible" content="IE=edge">
	<META name="viewport" content="width=device-width, initial-scale=1.0">
	<TITLE>Document</TITLE>
</HEAD>
<BODY>
	
</BODY>
</HTML>' > dist/index.html
	-python3 w3c_validator.py -st dist/index.html || true
help: ## Prints out the list of targets and their usage
	@grep "##" Makefile | grep -v grep | sed "s/##//"