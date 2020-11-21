all: docker

docker_build:
	docker build --build-arg UID=$(shell id -u) --build-arg GID=$(shell id -g ) -t test .

docker:
	docker run -v $(shell pwd):/src -it test
