#change this to your own repo, should you have uploaded your image!
# this one is node latest, but get a lower version. Node 8 is long term support
FROM  node:alpine
# FROM  quasarframework/client-dev:latest <<<=== that one is dead
MAINTAINER Your Name <your.email@your-sites-address.com>

# testing
RUN mkdir /home/node/app
# testing
USER root

# testing
VOLUME [ "/home/node/app" ]
# testing
WORKDIR /home/node/app
#WORKDIR /opt/app

#CMD /bin/sh

# testing
COPY package.json /home/node/app
#RUN npm install


RUN npm install -g vue-cli && \
    npm install -g quasar-cli && \
    npm install -g @vue/cli && \
    npm install -g @vue/cli-init 

COPY . /home/node/app

EXPOSE 8080

CMD /bin/sh
