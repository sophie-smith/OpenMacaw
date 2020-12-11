all: docker

docker_build: Dockerfile
	docker build -t test .

docker: docker_build
	docker run -p 3001:3001 -v $(shell pwd):/src -it test
