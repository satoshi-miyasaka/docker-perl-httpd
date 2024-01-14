FROM centos:centos7

RUN yum update -y
RUN yum install httpd -y
RUN yum install perl perl-core perl-local-lib -y
RUN yum install wget -y

COPY ./conf/httpd.conf /etc/httpd/conf/

WORKDIR /pubmail

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
