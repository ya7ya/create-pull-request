FROM node:12-alpine

RUN apk --update add git-crypt git-lfs

WORKDIR /opt/project

# COPY . .
COPY package.json /tmp/package.json
RUN cd /tmp && npm install
RUN cp -a /tmp/node_modules /opt/project/

WORKDIR /opt/project

# RUN npm install
COPY . /opt/project
RUN npm run build

ENTRYPOINT ["/opt/project/entrypoint.sh"]
