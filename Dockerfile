FROM docker.io/fedora:40
RUN yum update -y && yum upgrade -y && yum install -y procps python3 python3-pip net-tools curl nano
CMD [ "/bin/bash", "-c", "/usr/bin/tail -f /dev/null" ]