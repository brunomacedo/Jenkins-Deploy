FROM jenkins/jenkins
# https://hub.docker.com/r/jenkins/jenkins/
# FROM jenkins:alpine

USER root

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get upgrade \
    && apt-get update \
    && apt-get install -y nodejs

RUN npm install -g npm

USER jenkins
