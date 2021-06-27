#!/bin/sh

$(yarn bin)/cypress run $@

# cache exit code for file exit
EXIT_CODE=$?

# run posttest script
yarn combine-junit-results

# exit with cached exit code
exit $EXIT_CODE
