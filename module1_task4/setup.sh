#!/bin/bash

docker run -it ubuntu:18.04

hugo version
apt-get update && apt-get install -y hugo make

git clone https://github.com/rchrisb/holberton-validation.git module/file
cd /module/file

hugo
mv /public /dist

exit 0