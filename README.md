# Docker image for CSS

This repository contains the Dockerfile used to create the Docker image with the
EPICS base + SNS CSS.

## Running the Image

The simplest way to run the image is to run:

    docker run --rm -it --net host -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix lnls/epics-css

## Building the Image Manually

To build the image locally without downloading it from Docker Hub, clone the
repository and run the `docker build` command:

    git clone https://github.com/lnls-sirius/docker-epics-css
    docker build -t lnls/epics-css .
