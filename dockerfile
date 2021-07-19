# This file is a custom modified version of the example dockerfiles from cypress-docker-images repository
# See here: https://github.com/cypress-io/cypress-docker-images

ARG NODE_VERSION
FROM cypress/base:${NODE_VERSION}

USER root

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

# good colors for most applications
ENV TERM xterm

# set user to root
RUN npm config -g set user $(whoami)

# point Cypress at the /root/cache no matter what user account is used
# see https://on.cypress.io/caching
ENV CYPRESS_CACHE_FOLDER=/root/.cache/Cypress
RUN npm install -g "cypress@7.6.0"
RUN cypress verify

# give every user read access to the "/root" folder where the binary is cached
RUN chmod 755 /root
