FROM centos

# nginx
ADD ./assets/config/repos/nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum install -y nginx
ADD ./assets/config/nginx/nginx.conf /etc/nginx/conf.d/default.conf

# elasticsearch
RUN yum install -y tar java
WORKDIR /usr/local/src
RUN curl -O https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.3.2.tar.gz
RUN tar zxvf elasticsearch-1.3.2.tar.gz && rm elasticsearch-1.3.2.tar.gz
RUN mv elasticsearch-1.3.2 /usr/local/elasticsearch

# kibana
RUN curl -O https://download.elasticsearch.org/kibana/kibana/kibana-3.1.0.tar.gz 
RUN tar zxvf kibana-3.1.0.tar.gz && rm kibana-3.1.0.tar.gz
RUN mv kibana-3.1.0/* /usr/share/nginx/html
ADD ./assets/config/kibana/config.js /usr/share/nginx/html/config.js

ADD ./assets/bin/run.sh /usr/local/bin/run
RUN chmod u+x /usr/local/bin/run

CMD ["/usr/local/bin/run"]
