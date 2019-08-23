#!/bin/bash

# Launches IntelliJ IDEA inside a Docker container


USER_ID=0
GROUP_ID=0
HOME_DIR=$(cut -d: -f6 < <(getent passwd ${USER_ID}))

# Need to give the container access to your windowing system
xhost +

CMD="docker exec -ti
                --env HOME=${HOME} \
                --env DISPLAY=unix${DISPLAY} \
                --env DOCKER_NAME=IntelliJ
                --interactive \
                IntelliJ /bin/bash"
                

echo $CMD
$CMD
