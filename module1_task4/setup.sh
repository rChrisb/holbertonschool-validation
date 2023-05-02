
if ! command -v hugo >/dev/null 2>&1 || ! command -v make >/dev/null 2>&1; then
  apt-get update && apt-get install -y hugo make || exit 1
fi

if [[ ! -d ./dist ]]; then
  mkdir ./dist || exit 1
fi

cd ./site || exit 1

make build || exit 1

mv ./public/* ../dist/ || exit 1

exit 0
