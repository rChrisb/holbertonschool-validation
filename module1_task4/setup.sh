docker run -it ubuntu:18.04

apt-get update && apt-get install -y hugo make wget

wget https://github.com/gohugoio/hugo/releases/download/v0.111.0/hugo_extended_0.111.0_Linux-64bit.tar.gz
dpkg -i hugo_extended_0.111.0_Linux-64bit.deb

make build