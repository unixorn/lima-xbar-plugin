#!/usr/bin/make -f

.DEFAULT_GOAL := help

GREEN := $(shell tput -Txterm setaf 2)
YELLOW := $(shell tput -Txterm setaf 3)
WHITE := $(shell tput -Txterm setaf 7)
CYAN := $(shell tput -Txterm setaf 6)
RESET := $(shell tput -Txterm sgr0)

.PHONY: all
all: i install l lint r requirements f format t test ## run all targets

i: format install
install: format ## install the plugin
    @if logname >/dev/null 2>&1; then \
        logged_in_user=$$(logname); \
    else \
        logged_in_user=$$(whoami); \
    fi; \
    @if [ -d "$${logged_in_user}/Library/Application Support/xbar/plugins" ]; then \
        mkdir -p "$${logged_in_user}/Library/Application Support/xbar/plugins"; \
    fi; \
    cp lima-plugin "$${logged_in_user}/Library/Application Support/xbar/plugins/lima-plugin.10s"

# TODO: replace shellcheck with ruff or another linter (shellcheck doesn't work with python scripts)
# * cf. commit: e6b3896
l: lint
lint: ## lint the plugin
	shellcheck lima-plugin

r: requirements
requirements: ## export the requirements.txt file
	poetry export -f requirements.txt --output requirements.txt

f: format
format: ## format the plugin
	poetry run black lima-plugin

t: test
test: format ## test the plugin
	poetry run ./lima-plugin

help: ## show this help
	@echo ''
	@echo 'Usage:'
	@echo '    ${YELLOW}make${RESET} ${GREEN}<target>${RESET}'
	@echo ''
	@echo 'Targets:'
	@awk 'BEGIN {FS = ":.*?## "} { \
		if (/^[a-zA-Z_-]+:.*?##.*$$/) {printf "    ${YELLOW}%-20s${GREEN}%s${RESET}\n", $$1, $$2} \
		else if (/^## .*$$/) {printf "  ${CYAN}%s${RESET}\n", substr($$1,4)} \
		}' $(MAKEFILE_LIST)
