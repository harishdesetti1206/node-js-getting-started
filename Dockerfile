FROM node:10
MAINTAINER desettih@gmail.com 

RUN pwd
RUN /bin/bash -c "mkdir node-app"
EXPOSE 5000
ENTRYPOINT "cd /node-app"
ENTRYPOINT "ls -ltr"
#ENTRYPOINT "node test.js && node index.js"
ENTRYPOINT "npm run test"
