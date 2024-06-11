.PHONY: help start update stop
.EXPORT_ALL_VARIABLES:

APP_NAME := "jupyter_notebook"

help: ## Help for project
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

# ANSI color codes
GREEN=$(shell tput -Txterm setaf 2)
RED=$(shell tput -Txterm setaf 1)
BLUE=$(shell tput -Txterm setaf 6)
RESET=$(shell tput -Txterm sgr0)

## Docker
start: ## Start docker development environment
	@echo "$(YELLOW)Starting docker environment...$(RESET)"
	docker compose -p $(APP_NAME) up --build

update:  ## Update test environment containers (eg: after config changes)
	docker compose -p $(APP_NAME) up --build -d

stop: ## Stop test development environment
	@COMPOSE_PROJECT_NAME=$(APP_NAME) docker compose down
