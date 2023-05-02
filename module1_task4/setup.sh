#!/bin/bash

docker run --rm --tty --interactive --volume=$(pwd):/app --workdir=/app ubuntu:18.04 /bin/bash

hugo version
apt-get update && apt-get install -y hugo make

git clone https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke


make build
# echo "yo" >> dist/index.html

exit 0