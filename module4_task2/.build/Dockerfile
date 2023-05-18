FROM golang:1.15.8-buster
RUN apt-get update && apt-get install -y make=4.2.1 wget=1.20.3 curl=7.68.0 &&\
	wget -nv https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_linux-amd64.deb &&\
	dpkg -i hugo_extended_0.84.0_linux-amd64.deb &&\
	rm -f hugo_extended_0.84.0_linux-amd64.deb &&\
	curl -fsSL https://deb.nodesource.com/setup_19.x | bash - && apt-get install -y nodejs &&\
	npm install -g markdownlint-cli &&\
	npm install -g markdown-link-check
