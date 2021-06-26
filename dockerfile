# This file is a slightly modified version of the example dockerfiles from cypress-docker-images repository
# See here: https://github.com/cypress-io/cypress-docker-images/tree/master/browsers

ARG NODE_VERSION
FROM cypress/base:${NODE_VERSION}

USER root

RUN node --version
RUN echo "force new chrome here!"

# Chrome dependencies
RUN apt-get update
RUN apt-get install -y fonts-liberation libappindicator3-1 xdg-utils

# install Chrome browser
ARG CHROME_VERSION
RUN wget -O /usr/src/google-chrome-stable_current_amd64.deb "http://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_${CHROME_VERSION}-1_amd64.deb" && \
  dpkg -i /usr/src/google-chrome-stable_current_amd64.deb ; \
  apt-get install -f -y && \
  rm -f /usr/src/google-chrome-stable_current_amd64.deb
RUN google-chrome --version

# "fake" dbus address to prevent errors
# https://github.com/SeleniumHQ/docker-selenium/issues/87
ENV DBUS_SESSION_BUS_ADDRESS=/dev/null

# Add zip utility - it comes in very handy
RUN apt-get update && apt-get install -y zip

# a few environment variables to make NPM installs easier
# good colors for most applications
ENV TERM xterm
# avoid million NPM install messages
ENV npm_config_loglevel warn
# allow installing when the main user is root
ENV npm_config_unsafe_perm true
