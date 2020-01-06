# logrotate-Nginx
Logrotation access.log ang error.log
----------------------------------------
Clone the repo to local env

    docker build -t logrotate/nginx .
    docker run -it logrotate/nginx /bin/bash

In container inside:

    root@33b83223267f:/# ll /etc/logrotate.d/nginx
    root@33b83223267f:/# ll /etc/cron.daily/logrotate
    root@33b83223267f:/# ll /var/log/nginx/*log
