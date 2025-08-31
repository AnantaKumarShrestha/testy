
FROM ubuntu

RUN apt-get update 
RUN apt-get install -y php 
COPY . /var/www/html/
CMD ["php","-S","0.0.0.0:8081","-t","/var/www/html/"]

