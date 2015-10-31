FROM node:0.10-onbuild

RUN apt-get install -y apparmor  
RUN curl -s https://get.docker.io/ubuntu/ | sudo sh  
ADD wrapdocker /usr/local/bin/wrapdocker  
RUN chmod +x /usr/local/bin/wrapdocker  
ADD wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker  

ENV NODE_ENV=production \
    daemon=false \
    silent=false

CMD node app --setup && npm start
EXPOSE 4567
