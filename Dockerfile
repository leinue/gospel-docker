FROM ivydom/ssh:v3

MAINTAINER ivy 'xieyang@dodora.cn'

RUN mkdir /var/.gospel
RUN mkdir /var/.gospel/plugins
RUN mkdir /var/.gospel/node_modules

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install nodejs -y
RUN apt-get install npm -y
RUN npm install -g npm
RUN sudo ln -s `which nodejs` /usr/bin/node

RUN echo 'root:123456' | chpasswd

ENTRYPOINT service ssh start && cd /var/.gospel && git clone https://github.com/Gospely/.gospel && cd ./.gospel && mv * ../ && mv .c9 .eslintrc .git .nakignore ../ && cd ../ && rm -rf .gospel && /bin/bash 
