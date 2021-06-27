#!/bin/sh

DIR="$( cd "$( dirname $0 )" >/dev/null && pwd )"


TEST_RESULT_DIR=$DIR/../test-result

rm $TEST_RESULT_DIR/* || true
