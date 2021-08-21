.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.DEFAULT_GOAL := help

.PHONY: install-deps
install-deps: ## install dependencies
	yarn install

.PHONY: lint
lint: ## lint
	yarn lint

.PHONY: test
test: ## run tests
	yarn test

.PHONY: format
format: ## format codes
	yarn fix

.PHONY: build
build: ## build an app
	yarn build

.PHONY: start
start: ## start an app
	yarn start

.PHONY: ci-test
ci-test: install-deps lint test build ## run ci tests

# ---
# Amplify
# ---

.PHONY: install-deps-deployment
install-deps-deployment: ## install dependencies for deployment
	yarn global add @aws-amplify/cli

.PHONY: amplify-configure
amplify-configure: ## cofigure amplify
	amplify configure

.PHONY: amplify-init
amplify-init: ## initialize amplify project
	amplify init

.PHONY: amplify-add-hosting
amplify-add-hosting: ## add hosting
	amplify add hosting
