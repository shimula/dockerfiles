FROM centos

MAINTAINER shimula

RUN echo 'root:changeit' | chpasswd

RUN yum install -y vi vim openssh-server 

# set up sshd
RUN mkdir -p /var/run/sshd
RUN sed -ri 's/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
RUN sed -ri 's/#UsePAM no/UsePAM no/g' /etc/ssh/sshd_config
RUN /etc/init.d/sshd start
RUN /etc/init.d/sshd stop

# set up supervisord
RUN rpm --import http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/RPM-GPG-KEY-EPEL-6
RUN rpm -ivh http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum --enablerepo=epel -y install supervisor 
RUN mkdir -p /var/log/supervisor
ADD supervisord.conf /etc/supervisord.conf

EXPOSE 22
CMD ["/usr/bin/supervisord"]
