#!/bin/bash

docker run -it ubuntu:18.04

hugo version
apt-get update && apt-get install -y hugo make

hugo 
cp -R public/ dist/
rm -rf public/

exit 0