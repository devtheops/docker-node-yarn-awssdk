IMAGE_NAME = digitalfiz/node-yarn-awscli

build:
	docker build -t $(IMAGE_NAME) .

push:
	docker push $(IMAGE_NAME)
	docker tag $(IMAGE_NAME) $(IMAGE_NAME):latest
	docker push $(IMAGE_NAME):latest