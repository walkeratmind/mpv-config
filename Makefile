SHELL := /bin/bash

MPVDIR := ${HOME}/.config/mpv


.PHONY: help
help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

run: ## Run the setup to create a config symlink in ~/.config/mpv/
	bash setup.sh
	@echo Setup: $(MPVDIR) complete!

clean: ## Clean the mpv configs
	sudo rm -rf $(MPVDIR)/*
	@echo Cleanup $(MPVDIR) complete!

