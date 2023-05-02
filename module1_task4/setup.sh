#!/bin/bash

docker run -it ubuntu:18.04

hugo version
apt-get update && apt-get install -y hugo make

git clone https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke
# echo "theme = 'ananke'" >> config.toml
# echo "publishDir = './dist'" >> config.toml
make build
rm -rf dist
mkdir -p dist
cp -R public/ dist/
# mv public/ dist/

exit 0