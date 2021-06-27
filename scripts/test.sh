#!/bin/sh

$(yarn bin)/cypress run --reporter cypress-multi-reporters --reporter-options configFile=reporter-config.json
