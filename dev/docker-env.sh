#! /usr/bin/env bash

FWDIR="$(
  cd "$(dirname "$0")"/.. || exit
  pwd
)"

docker run -it --privileged \
-v "${FWDIR}:/src/PX4-Autopilot/:rw" \
-e DISPLAY=:0 \
px4io/px4-dev-ros-melodic:latest bash

#docker run -it --privileged \
#--env=LOCAL_USER_ID="$(id -u)" \
#-v "${CRDIR}/PX4:/src/PX4/:rw" \
#-e DISPLAY=:0 \
#px4io/px4-dev-ros-melodic:latest bash

#docker run -it --privileged \
#--env=LOCAL_USER_ID="$(id -u)" \
#-v "$(pwd):/src/PX4-Autopilot/:rw" \
#-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
#-e DISPLAY=:0 \
#px4io/px4-dev-ros-melodic:latest bash
############### ERROR! ################
#docker: Error response from daemon: Mounts denied:
#The path /tmp/.X11-unix is not shared from the host and is not known to Docker.
#You can configure shared paths from Docker -> Preferences... -> Resources -> File Sharing.
#See https://docs.docker.com/ for more info.
#ERRO[0000] error waiting for container:
