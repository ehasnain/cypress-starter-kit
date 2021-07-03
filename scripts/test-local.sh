#!/bin/sh

DIR="$(cd "$(dirname $0)" >/dev/null && pwd)"

yarn lint &&
	yarn test --headed --browser chrome
