############################################################
# Dockerfile to build Nginx + Logrotate Installed Containers
# Based on Ubuntu
############################################################
FROM ubuntu:16.04

# Install nginx & logrotate
RUN apt-get update \
    && apt-get -y install logrotate \
    && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
#    && echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

        #Copy logrotate nginx configuration
COPY config/logrotate.d/nginx /etc/logrotate.d/

        # Start nginx and cron as a service
CMD service cron start && nginx -g 'daemon off;'
CMD service nginx start
