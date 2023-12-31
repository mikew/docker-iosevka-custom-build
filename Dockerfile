FROM node:lts-slim

ARG IOSEVKA_VERSION=v27.3.5

WORKDIR /app

RUN chown node:node /app \
  && apt-get update \
  && apt-get install -y curl ttfautohint

USER node

RUN curl -L "https://github.com/be5invis/Iosevka/archive/refs/tags/${IOSEVKA_VERSION}.tar.gz" \
    | tar --strip-components=1 -xvz -C ./ \
  && npm install \
  && mv packages/font-glyphs font-glyphs-pristine \
  && mv packages/font-otl font-otl-pristine

USER root

COPY entrypoint /entrypoint

ENTRYPOINT ["/entrypoint"]
