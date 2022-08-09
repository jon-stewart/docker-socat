NAME   := jonstewartlw/socat
IMAGE  := ${NAME}:$$(git log -1 --pretty=%h)
LATEST := ${NAME}:latest
 
.PHONY: build
build:
	docker build -t ${IMAGE} .
	docker tag ${IMAGE} ${LATEST}
 
.PHONY: push
push:
	docker push ${NAME}
