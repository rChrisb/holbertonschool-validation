lint: ## Does the linting
	-make build-docker
	docker run --rm -i hadolint/hadolint < .build/Dockerfile

build:  ## publish the site
	-docker run --rm --volume=$(shell pwd):/app --workdir=/app awesome:build /bin/bash -c "go mod init github.com/rChrisb/awesome-api && go get github.com/gorilla/mux && go build"
	docker run --rm --volume=$(shell pwd):/app --workdir=/app awesome:build hugo

run: ## Run the application in background, and write logs into a file named awesome-api.log

	./awesome-api >./awesome-api.log 2>&1 &

stop: ##  Stop the application
	pkill awesome-api
clean:  ## empties the dist directory
	rm -rf dist/
	pkill awesome-api || true
	rm -rf awesome-api awesome-api.log coverage-integrations.out coverage-units.out awesome-website.zip

post:  ## Add a new page to your site with a specific title
	hugo new posts/$(POST_NAME).md
	sed -i "s/title: .*/title: \"$(POST_TITLE)\"/" content/posts/$(POST_NAME).md

test: ## Tests for browser responses
	make unit-tests
	make integration-tests
	make validate


unit-tests: ## Unitests
	docker run --rm --volume=$(shell pwd):/app --workdir=/app awesome:build go test -v -short -coverprofile=coverage-units.out

integration-tests: ## Integration tests
	docker run --rm --volume=$(shell pwd):/app --workdir=/app awesome:build go test -v -coverprofile=coverage-integrations.out

check: ## Check lint of markdonws source files and analysis of the links
	markdownlint README.md content/posts/welcome.md
	markdown-link-check README.md content/posts/welcome.md
validate: ## validate the html file in dist/
	-python3 w3c_validator.py -f errors.txt dist/index.html
	
package: ## produces awesome-website.zip, containing awesome-api and the directory dist/
	make build
	zip awesome-website.zip dist/ awesome-api

# build-docker: ##  build the Docker image
#     docker build -t awesome:build -f .build

docker-tests: ## tests with docker
		-make build-docker
		container-structure-test test --image awesome:build --config .build/cst.yml

help: ## Prints out the list of targets and their usage
	@grep "##" Makefile | grep -v grep | sed "s/##//"