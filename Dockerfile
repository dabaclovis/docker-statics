FROM nginx as nginx 
RUN apt-get update -y
ADD git clone https://github.com/dabaclovis/docker-statics.git  /usr/share/nginx/html/

FROM jenkins/jenkins as jenkins 
USER root
RUN apt-get update -y 
RUN apt-get install -y \
    git \
    vim \
    tree \
    maven \
    openjdk-11-jdk


FROM tomee as tomcat9
RUN apt-get update -y
RUN apt-get install -y \
    git \
    tree \
    vim