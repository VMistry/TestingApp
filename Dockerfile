FROM  ubuntu:16.04
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install nginx -y



WORKDIR /home/ubuntu/app
COPY package.json /home/ubuntu/app
RUN npm install
COPY . /home/ubuntu/app
EXPOSE 3000
CMD [ “npm”, “start” ]

CMD nginx -g "daemon off;"
