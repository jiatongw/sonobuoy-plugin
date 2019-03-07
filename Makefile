REGISTRY ?= jiatongw
IMAGE = $(REGISTRY)/sample
DOCKER ?= docker

all: container

container: run.sh
	$(DOCKER) build -t $(REGISTRY)/sample:latest .

push:
	$(DOCKER) push $(REGISTRY)/sample:latest

.PHONY: all container push

clean:
	$(DOCKER) rmi $(REGISTRY)/sample:latest  || true


