#!/bin/bash

docker run --rm --tty --interactive --volume=$(pwd):/app --workdir=/app ubuntu:18.04 /bin/bash

hugo version
apt-get update && apt-get install -y hugo make

# git clone https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke
# echo "theme = 'ananke'" >> config.toml
# echo "publishDir = './dist'" >> config.toml
hugo -d ./dist

# mv public/ dist/

exit 0