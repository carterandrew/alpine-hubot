#!/bin/bash

docker run -ti -p 8080:8080/tcp -e HUBOT_SLACK_TOKEN -e EXPRESS_PORT=8080 alpine-hubot
