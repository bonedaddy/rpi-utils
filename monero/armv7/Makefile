.PHONY: build
build:
	# docker buildx create --platform=linux/arm/v7 --name monero
	docker buildx use monero
	docker buildx inspect --bootstrap
	env DOCKER_CLI_EXPERIMENTAL=enabled docker buildx build --platform=linux/arm/v7 -t postables/monero-armv7:v0.16.0 --push .