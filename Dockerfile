FROM centos:7
RUN yum install wget -y
RUN yum install sudo -y
RUN yum install net-tools -y
RUN yum install httpd -y
COPY index.php /var/www/html
RUN /usr/sbin/httpd


