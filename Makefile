IMAGENAME=gpgpu_dev_env
REPO=atomesz
#IMAGEFULLNAME=${REPO}/${IMAGENAME}:${shell git log -1 --format=%h}
IMAGEFULLNAME=${REPO}/${IMAGENAME}:latest

.PHONY: help build push all login

all: build push

help:
	    @echo "Makefile commands:"
	    @echo "build"
	    @echo "push"
	    @echo "all"
		@echo "login"

login:
		@docker login

build:
	    @docker build --pull -t ${IMAGEFULLNAME} .

push:
	    @docker push ${IMAGEFULLNAME}
