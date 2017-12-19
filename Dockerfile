FROM node:latest

RUN mkdir -p /project

WORKDIR /project
ADD package.json /project/package.json
RUN npm install 

ENV PORT 3000
ENV DB_URL mongodb://mongo-db:27017/testApp

ADD . /project 
RUN cd /project

EXPOSE 3000
CMD ["npm", "start"]

