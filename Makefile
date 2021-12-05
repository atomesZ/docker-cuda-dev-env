IMAGENAME=GPGPU_dev_env
REPO=atomesz
IMAGEFULLNAME=${REPO}/${IMAGENAME}:${KUBECTL_VERSION}

.PHONY: help build push all

help:
	    @echo "Makefile commands:"
	    @echo "build"
	    @echo "push"
	    @echo "all"

build:
	    @docker build --pull ${IMAGEFULLNAME} .

push:
	    @docker push ${IMAGEFULLNAME}

all: build push