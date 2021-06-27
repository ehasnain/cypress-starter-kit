#!/bin/sh

DIR="$(cd "$(dirname $0)" >/dev/null && pwd)"

yarn test --headed --browser chrome
