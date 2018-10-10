FROM  ubuntu:16.04
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install nginx -y

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app
RUN npm install
COPY . /usr/src/app
EXPOSE 3000
CMD [ “npm”, “start” ]

CMD nginx -g "daemon off;"
