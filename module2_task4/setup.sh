docker run -it ubuntu:18.04

apt-get update && apt-get install -y hugo make

make build
echo "nom d'un raton laveur qui ne lave pas bien" >> dist/index.html

