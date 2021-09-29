DOCKER_IMAGE=lighttpd

include Makefile.docker

.PHONY: check-version
check-version:
	docker run --rm $(DOCKER_NAMESPACE)/$(DOCKER_IMAGE):$(VERSION) apk list --installed| grep lighttpd|grep -v mod|awk '{print $$1}'|awk -F'-' '{print $$2}'
