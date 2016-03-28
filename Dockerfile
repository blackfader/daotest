FROM centos:centos6

MAINTAINER Siliang Xu <xusiliang@360.cn>
LABEL  Description="This image is used to start the nginx" Version="1.0"

RUN rpm -ivh http://mirrors.yun-idc.com/epel/6/x86_64/epel-release-6-8.noarch.rpm && yum clean all

#install nginx

RUN yum install -y nginx  && rm -rf /var/cache/yum

RUN echo 'hello docker!' >> /usr/share/nginx/html/test.html
RUN echo 'I I I I am docker!' >> /usr/share/nginx/html/index.html

#ENTRYPOINT
ENTRYPOINT ["nginx"]
# Nginx listen port
EXPOSE 80
