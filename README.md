# docker-iosevka-custom-build

Easily build a custom version of Iosevka.

## Usage

This will run `npm run build ttf::iosevka-custom`

```sh
mkdir -p ./.build ./font-src ./dist
docker run --rm -t \
  --user "$UID" \
  --volume "$PWD/.build:/app/.build" \
  --volume "$PWD/font-src:/app/font-src" \
  --volume "$PWD/dist:/app/dist" \
  --volume "$PWD/private-build-plans.toml:/app/private-build-plans.toml" \
  mikewhy/docker-iosevka-custom-build:latest
```

But you can supply any command

```sh
mkdir -p ./.build ./font-src ./dist
docker run --rm -t \
  --user "$UID" \
  --volume "$PWD/.build:/app/.build" \
  --volume "$PWD/font-src:/app/font-src" \
  --volume "$PWD/dist:/app/dist" \
  --volume "$PWD/private-build-plans.toml:/app/private-build-plans.toml" \
  mikewhy/docker-iosevka-custom-build:latest \
  npm run build ttf::iosevka-custom ttf::iosevka-custom-slab
```
