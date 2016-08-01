.PHONY: build test

default: build test

test:
	docker run -t tennis

build:
	docker build -t tennis .
