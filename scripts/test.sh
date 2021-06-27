#!/bin/sh

# set e+x

$(yarn bin)/cypress run --reporter cypress-multi-reporters --reporter-options configFile=reporter-config.json

# cache exit code for file exit
EXIT_CODE=$?

# run posttest script
yarn combine-reports

# exit with cached exit code
exit $EXIT_CODE
