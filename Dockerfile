FROM node:lts-alpine3.9
MAINTAINER desettih@gmail.com 


RUN apt-get update -y
RUN apt-get install apt-utils -y
RUN apt-get install nginx -y
RUN apt-get install apache2 -y
RUN apt-get install maven -y
RUN apt-get install git -y
RUN pwd
RUN git clone https://github.com/spring-projects/spring-petclinic.git
EXPOSE 5000
RUN /bin/bash -c "npm install && node test.js && node index.js 
