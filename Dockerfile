FROM node:14-bullseye-slim

USER root

RUN mkdir -p /opt/project  

RUN apt-get update
RUN apt-get install -y rsync bash

COPY . /opt/project

RUN set -uex \
    && cd /opt/project \
    && npm install 
 

ENTRYPOINT ["node", "/opt/project/index.js"] 