

docker run -it ubuntu:18.04

if ! command -v hugo &> /dev/null; then
    wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.deb
    dpkg -i hugo_extended_0.84.0_Linux-64bit.deb
fi

if ! command -v make &> /dev/null; then
    apt-get update && apt-get install -y make
fi

make build