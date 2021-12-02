FROM node:12-alpine

RUN apk --update add git-crypt git-lfs

WORKDIR /opt/project

COPY . .

RUN npm install
RUN npm run build

ENTRYPOINT ["/opt/project/entrypoint.sh"]
