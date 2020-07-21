FROM ruby:2.6.6-buster

ARG GEM_SOURCE=https://rubygems.org/
ARG RAILS_VERSION=5.2.4.1

#add sources
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq 

RUN apt-get -y install bash postgresql-client sqlite yarn

RUN gem install rails -v ${RAILS_VERSION} --source ${GEM_SOURCE}

RUN chmod -R 777 /usr/local/bundle/
