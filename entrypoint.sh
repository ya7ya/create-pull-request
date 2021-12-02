#!/bin/sh -l

set -eu

echo "$GIT_CRYPT_KEY" | base64  -d > /tmp/git-crypt-key

# git-crypt unlock /tmp/git-crypt-key

# rm /tmp/git-crypt-key

node /opt/project/dist/index.js
