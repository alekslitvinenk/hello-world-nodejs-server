#!/usr/bin/env bash

# bash generate random 10 character alphanumeric string (upper and lowercase) and 
# NEW_UUID=$(env LC_CTYPE=C tr -dc "a-zA-Z0-9" < /dev/urandom | head -c 10 | cat)
NEW_UUID=latest

docker build -t alekslitvinenk/hello-world-nodejs-server:$NEW_UUID --no-cache .
docker push alekslitvinenk/hello-world-nodejs-server:$NEW_UUID