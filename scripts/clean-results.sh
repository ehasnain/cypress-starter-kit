#!/bin/sh

DIR="$( cd "$( dirname $0 )" >/dev/null && pwd )"


TEST_RESULTS_DIR=$DIR/../test-results

rm -r $TEST_RESULTS_DIR/* || true
