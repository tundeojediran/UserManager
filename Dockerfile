FROM node:latest

RUN mkdir -p /project

WORKDIR /project
ADD package.json /project/package.json
RUN npm install 

ADD . /project 
RUN cd /project

EXPOSE 3000
CMD ["npm", "start"]

