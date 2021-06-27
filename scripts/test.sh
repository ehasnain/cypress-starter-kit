#!/bin/sh

DIR="$(cd "$(dirname $0)" >/dev/null && pwd)"

$(yarn bin)/cypress run --browser chrome

# cache exit code for file exit
EXIT_CODE=$?

# run posttest script
$DIR/combine-results.sh

# exit with cached exit code
exit $EXIT_CODE
