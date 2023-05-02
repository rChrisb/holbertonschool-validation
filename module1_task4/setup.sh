#!/bin/bash

docker run -it ubuntu:18.04

hugo version
apt-get update && apt-get install -y hugo make

git clone https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke
sed -i 's/^#theme.*/theme = "ananke"/' config.toml
make build
mv public/ dist/

exit 0