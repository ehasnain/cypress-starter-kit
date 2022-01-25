#!/bin/sh

DIR="$(cd "$(dirname $0)" >/dev/null && pwd)"

yarn run lint &&
	yarn run test --headed --browser chrome
