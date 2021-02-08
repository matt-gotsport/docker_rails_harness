FROM beevelop/ionic:latest

RUN apt-get update -y && apt-get install -y openjdk-8-jdk 

RUN apt-get -qq update && \
    apt-get -qq install -y wget curl maven ant gradle vim

RUN apt-get update -y && apt-get install -y rubygems ruby-dev build-essential

RUN gem install cocoapods
RUN gem install travis

RUN mv /usr/local/bin/pod /usr/local/bin/_pod
RUN echo "#!/bin/bash" > /usr/local/bin/pod && echo "/usr/local/bin/_pod --allow-root $@" >> /usr/local/bin/pod
RUN chmod 777 /usr/local/bin/pod

EXPOSE 8100
