FROM centos:7
RUN yum clean all
RUN yum update -y
RUN yum install wget -y
RUN yum install sudo -y
RUN yum install net-tools -y
RUN yum install httpd -y
COPY index.php /var/www/html
EXPOSE 80
CMD /usr/sbin/httpd -DFOREGROUND
#RUN yum install java-11-openjdk.x86_64 -y
#RUN yum -y install openssh-server passwd
#ADD ./start.sh /start.sh
#RUN mkdir /var/run/sshd

#RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''

#RUN chmod 755 /start.sh
#EXPOSE 22
#RUN ./start.sh
#ENTRYPOINT ["/usr/sbin/sshd", "-D"]
