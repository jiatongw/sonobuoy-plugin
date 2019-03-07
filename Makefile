REGISTRY ?= hub.docker.com/r/jiatongw
IMAGE = $(REGISTRY)/run
DOCKER ?= docker

all: container

container: run.sh
	$(DOCKER) build -t $(REGISTRY)/run:latest .

push:
	$(DOCKER) push $(REGISTRY)/run:latest

.PHONY: all container push

clean:
	$(DOCKER) rmi $(REGISTRY)/run:latest  || true


