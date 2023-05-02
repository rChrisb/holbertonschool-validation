docker run -it ubuntu:18.04

apt-get update && apt-get install -y hugo make

wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz
tar -xf hugo_extended_0.84.0_Linux-64bit.tar.gz
mv hugo /usr/local/bin/hugo

make build