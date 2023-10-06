#! /usr/bin/env bash

FWDIR="$(
  cd "$(dirname "$0")"/.. || exit
  pwd
)"

cd $FWDIR && \
make px4_sitl_default && \
make px4_sitl_default jmavsim HEADLESS=1