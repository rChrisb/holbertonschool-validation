docker run -it ubuntu:18.04

if ! command -v hugo > /dev/null 2>&1 || ! command -v make > /dev/null 2>&1; then
	apt-get update && apt-get install -y hugo make
fi

make build