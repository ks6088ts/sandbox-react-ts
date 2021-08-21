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
build: ## build applications
	yarn build

.PHONY: ci-test
ci-test: install-deps lint test build ## run ci tests
