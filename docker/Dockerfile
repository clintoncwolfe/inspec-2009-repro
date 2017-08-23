FROM centos:6.7
RUN yum install -y crontabs.noarch
RUN echo '15 02 * * * date > /tmp/nowish' | crontab

ENTRYPOINT /bin/sh -c 'while true; do sleep 1; done'
