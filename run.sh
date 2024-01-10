#!/bin/sh

docker run \
  --rm \
  -d \
  --name rocker \
  -e DISABLE_AUTH=true \
  -e PASSWORD=riken \
  -p 8787:8787 \
  -v $(pwd):/home/rstudio/project \
  --workdir=/home/rstudio/project \
  amori/rstudio:v0.0