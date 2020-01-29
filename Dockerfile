FROM node:10
MAINTAINER desettih@gmail.com 

RUN apt-get update -y
RUN apt-get install apt-utils -y
RUN apt-get install nginx -y
RUN apt-get install apache2 -y
RUN apt-get install maven -y
RUN apt-get install git -y
RUN apt-get install nodejs -y
RUN git clone https://github.com/harishdesetti1206/node-js-getting-started.git
RUN cd node-js-getting-started/
RUN pwd
EXPOSE 5000
#ENTRYPOINT "node test.js && node index.js"
#ENTRYPOINT "npm i"
ENTRYPOINT node test.js
ENTRYPOINT node index.js
