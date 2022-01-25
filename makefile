SHELL := /bin/sh

help:		## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build:		## Build Docker image for cypress testing
	@./scripts/build.sh

lint:		## Run linter (eslint) on the 'src' folders
	@yarn run lint

test:		## Run tests once on local machine without docker
	@yarn run test-local

test-watch:	## Start cypress tests in watch mode
	@yarn run test-watch

test-ci: build	## Run tests on a CI Environment (e.g. Jenkins, etc.) in a docker container
	@docker-compose up test-ci && docker-compose rm -fsv test-ci
