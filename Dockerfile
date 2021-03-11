FROM node:12-alpine

RUN apk add --no-cache ca-certificates \
    --repository http://dl-3.alpinelinux.org/alpine/edge/community/ \
    jq curl bash git

COPY dist/ /

ENTRYPOINT ["node", "/index.js"]