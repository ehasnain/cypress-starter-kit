#!/bin/sh

DIR="$(cd "$(dirname $0)" >/dev/null && pwd)"

eslint $DIR/../src $@
