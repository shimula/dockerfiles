#!/bin/sh

/usr/local/elasticsearch/bin/elasticsearch -d
nginx 
tail -f /var/log/nginx/access.log
