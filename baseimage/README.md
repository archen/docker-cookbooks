Creates an image based on phusion/baseimage without SSH support

Add image to your local registry using:
	docker build -t localhost:5000/baseimage .

To interact with running docker containers you can use nsenter https://github.com/jpetazzo/nsenter:
	docker run --rm -v /usr/local/bin:/target jpetazzo/nsenter
