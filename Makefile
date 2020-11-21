all: docker

docker_build: Dockerfile
	docker build -t test .

docker: docker_build
	docker run -p 3000:3000 -v $(shell pwd):/src -it test
