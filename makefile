help:		## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build:		## Build Docker image for cypress testing
	@./scripts/build.sh

test:		## Run tests on local machine without docker
	@./scripts/test.sh

test-ci:	## Run tests on a CI Environment (e.g. Jenkins, etc.)
	@./scripts/test-ci.sh
