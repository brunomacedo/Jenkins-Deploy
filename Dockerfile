FROM jenkins

USER root

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get update \
    && apt-get install -y nodejs

RUN npm install -g npm

RUN npm --version

USER jenkins
