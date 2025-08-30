CURL = curl

all:

deps:

updatenightly:
	$(CURL) -sSLf https://raw.githubusercontent.com/wakaba/ciconfig/master/ciconfig | RUN_GIT=1 REMOVE_UNUSED=1 perl

test-image:
	docker run -i $(DOCKER_IMAGE) bash -c 'apt-get update && apt-get install -y curl wget make git && curl -f https://www.google.com && wget https://www.google.com && git clone https://github.com/pawjy/docker-base && cd docker-base && make empty'
	docker run -i $(DOCKER_IMAGE) ls /usr/share/keyrings/ -l

empty:

## License: Public Domain.
