# docker-iosevka-custom-build

Easily build a custom version of Iosevka.

## Usage

This will run `npm run build ttf::IosevkaCustom`

```sh
mkdir -p ./.build ./font-glyphs ./font-otl ./dist
docker run --rm -t \
  --user "$UID" \
  --volume "$PWD/.build:/app/.build" \
  --volume "$PWD/font-glyphs:/app/packages/font-glyphs" \
  --volume "$PWD/font-otl:/app/packages/font-otl" \
  --volume "$PWD/dist:/app/dist" \
  --volume "$PWD/private-build-plans.toml:/app/private-build-plans.toml" \
  mikewhy/docker-iosevka-custom-build:latest
```

But you can supply any command

```sh
mkdir -p ./.build ./font-glyphs ./font-otl ./dist
docker run --rm -t \
  --user "$UID" \
  --volume "$PWD/.build:/app/.build" \
  --volume "$PWD/font-glyphs:/app/packages/font-glyphs" \
  --volume "$PWD/font-otl:/app/packages/font-otl" \
  --volume "$PWD/dist:/app/dist" \
  --volume "$PWD/private-build-plans.toml:/app/private-build-plans.toml" \
  mikewhy/docker-iosevka-custom-build:latest \
  npm run build ttf::IosevkaCustom ttf::IosevkaCustomSlab
```
