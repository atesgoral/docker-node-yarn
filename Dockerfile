FROM node:6.9.3

RUN apt-get update \
  && apt-get install -y --no-install-recommends apt-utils

RUN apt-get install apt-transport-https
 
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update \
  && apt-get install yarn

RUN yarn --version

