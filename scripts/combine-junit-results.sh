#!/bin/sh

DIR="$(cd "$(dirname $0)" >/dev/null && pwd)"

TEST_RESULT_DIR=$DIR/../test-results/junit

# combine test reports and delete individual report files
$(yarn bin)/jrm $TEST_RESULT_DIR/test-results.xml $TEST_RESULT_DIR/results-*.xml &&
    rm $TEST_RESULT_DIR/results-* || true
