CURL = curl

all:

deps:

updatenightly:
	$(CURL) -sSLf https://raw.githubusercontent.com/wakaba/ciconfig/master/ciconfig | RUN_GIT=1 REMOVE_UNUSED=1 perl

test-image:
	docker run -it $(DOCKER_IMAGE) 'apt-get update && apt-get install -y "curl wget" && curl -f https://www.google.com && wget https://www.google.com'

## License: Public Domain.
