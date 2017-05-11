FROM centos
MAINTAINER NGINX Docker Maintainers "814787730@qq.com"
RUN mkdir -p /nginx/conf.d
RUN mkdir -p /nginx/www
RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm 
RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm 
RUN rpm -Uvh https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
RUN yum install -y nginx
RUN  rm -Rf /etc/nginx/conf.d  &&  ln -sf  /nginx/conf.d/  /etc/nginx/
EXPOSE 80 443
CMD  ["nginx","-g","daemon off;"]
