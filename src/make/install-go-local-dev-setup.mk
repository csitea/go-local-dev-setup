# src/make/clean-install-dockers.func.mk
# Keep all (clean and regular) docker install functions in here.

.PHONY: clean-install-go-local-dev-setup  ## @-> setup the whole local go-local-dev-setup environment for python no cache
clean-install-go-local-dev-setup:
	$(call build-img,go-local-dev-setup,--no-cache,${APP_PORT})
	make start-go-local-dev-setup

.PHONY: install-go-local-dev-setup  ## @-> setup the whole local go-local-dev-setup environment for python
install-go-local-dev-setup:
	$(call build-img,go-local-dev-setup,,${APP_PORT})
	make start-go-local-dev-setup

.PHONY: build-go-local-dev-setup  ## @-> setup the whole local go-local-dev-setup environment for python no cache
build-go-local-dev-setup:
	$(call build-img,go-local-dev-setup,--no-cache,${APP_PORT})

.PHONY: start-go-local-dev-setup  ## @-> setup the whole local go-local-dev-setup environment for python no cache
start-go-local-dev-setup:
	$(call start-img,go-local-dev-setup,--no-cache,${APP_PORT})

.PHONY: stop-go-local-dev-setup
stop-go-local-dev-setup:
	CONTAINER_NAME=go-local-dev-setup
	$(call stop-and-remove-docker-container)
