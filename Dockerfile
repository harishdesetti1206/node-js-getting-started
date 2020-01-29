FROM node:lts-alpine3.9
MAINTAINER desettih@gmail.com 

RUN pwd
RUN git clone https://github.com/spring-projects/spring-petclinic.git
EXPOSE 5000
RUN /bin/bash -c "npm install && node test.js && node index.js 
