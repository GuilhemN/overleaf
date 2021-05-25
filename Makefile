# Makefile

SHARELATEX_BASE_TAG := guilhemn/overleaf-base-full:latest
SHARELATEX_TAG := guilhemn/overleaf

build-base:
	docker build --build-arg TEX_SCHEME="scheme-basic" -f Dockerfile-base -t  $(SHARELATEX_BASE_TAG) .


build-community:
	docker build --build-arg SHARELATEX_BASE_TAG=$(SHARELATEX_BASE_TAG) -f Dockerfile -t $(SHARELATEX_TAG) .


PHONY: build-base build-community
