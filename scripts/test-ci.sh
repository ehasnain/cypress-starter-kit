#!/bin/sh

DIR="$(cd "$(dirname $0)" >/dev/null && pwd)"

$DIR/test.sh --headless --browser chrome
