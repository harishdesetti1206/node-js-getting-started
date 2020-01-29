FROM node:10
MAINTAINER desettih@gmail.com 

RUN pwd
EXPOSE 5000
ENTRYPOINT "node test.js && node index.js"
