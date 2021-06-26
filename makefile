PLATFORM ?= local

build:
	@./scripts/build.sh

test:
	@./scripts/test.sh

test-ci:
	@docker-compose up --build test-ci
