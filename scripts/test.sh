#!/bin/sh

DIR="$(cd "$(dirname $0)" >/dev/null && pwd)"

$(yarn bin)/cypress run --reporter cypress-multi-reporters --reporter-options configFile=reporter-config.json

# cache exit code for file exit
EXIT_CODE=$?

# run posttest script
$DIR/combine-reports.sh

# exit with cached exit code
exit $EXIT_CODE
