SLACK_TOKEN := $(shell cat /opt/lita_slack_token.txt)
IMAGE_NAME := lita_latest
DOCKER_HUB_IMAGE := dpritchett/ruby-bookbot:latest

rebuild: pull destroy run

pull:
	docker pull ${DOCKER_HUB_IMAGE}

stop:
	docker stop ${IMAGE_NAME}


destroy: stop
	docker rm ${IMAGE_NAME}

log:
	docker logs -f ${IMAGE_NAME}

run: pull
	docker run -dit --net="host" \
	  -e "REDIS_URL=redis://localhost:6379" \
	  -e "RACK_ENV=production" \
	  -e "SLACK_TOKEN=${SLACK_TOKEN}" \
	  --name ${IMAGE_NAME} ${DOCKER_HUB_IMAGE} \
	    /bin/bash -c "cd /app && bundle exec lita" \
	  --restart always --rm
