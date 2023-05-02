# docker run -it ubuntu:18.04

apt-get update && apt-get install -y make wget

wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz
sudo dpkg -i hugo_extended_0.84.0_Linux-64bit.deb

make build