DOCKER = docker
IMAGE = helllynx/aosp-env

all: Dockerfile
		$(DOCKER) build -t $(IMAGE) .

.PHONY: all