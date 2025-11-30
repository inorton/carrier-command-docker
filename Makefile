STEAM_USERNAME := ""
STEAM_BETA := ""

DOCKER_COMMAND := "docker"
IMAGE_NAME := "bredlab/cc2-server:stable"

.PHONY: build clean

build:
	${DOCKER_COMMAND} build -t $(IMAGE_NAME) .
	${DOCKER_COMMAND} volume create carriercommand || true
	${DOCKER_COMMAND} run -e STEAM_USERNAME=$(STEAM_USERNAME) -u carriercommand -v carriercommand:/carriercommand -w / --rm --entrypoint="" -it $(IMAGE_NAME) bash /install-cc2.sh


clean:
	rm -rfv ./game_files ./game_files_temp
