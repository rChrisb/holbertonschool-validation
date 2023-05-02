

docker run -it ubuntu:18.04


if ! command -v hugo &> /dev/null; then
    apt-get update && apt-get install -y hugo
    if ! [ $? -eq 0 ];
        exit 1
    fi
fi

if ! command -v make &> /dev/null; then
    apt-get update && apt-get install -y make
    if ! [ $? -eq 0 ]; then
        exit 1
    fi
fi

make build
if [ $? -ne 0 ]; then
    exit 1
fi