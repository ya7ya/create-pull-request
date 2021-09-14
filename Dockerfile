FROM node:current-alpine

RUN apk --update add git-crypt git-lfs

WORKDIR /opt/project

COPY entrypoint.sh .

ENTRYPOINT ["/opt/project/entrypoint.sh"]
