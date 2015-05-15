# VERSION 0.2
# DOCKER-VERSION 0.3.4
# To build:
# 1. Install docker (http://docker.io)
# 2. Checkout source: https://github.com/tyschroed/docker-node-hello
# 3. Build container: docker build .

# DOCKER-VERSION 1.0.0
FROM resin/rpi-raspbian
 
# install required packages
RUN apt-get update
RUN apt-get install -y wget dialog
 
# install nodejs
RUN wget http://node-arm.herokuapp.com/node_latest_armhf.deb
RUN dpkg -i node_latest_armhf.deb
 
COPY . /src
RUN cd /src; npm install
 
# run application
EXPOSE 8080
CMD ["node", "/src/index.js"]
