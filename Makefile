install:
	npm install

build:
	docker build -t resin/rpi-raspbian .

run:
	node index.js

run-container:
	docker run -p 49160:8080 -d resin/rpi-raspbian

test:
	curl localhost

clean:
	rm -rf node_modules


.PHONY: install build run test clean
