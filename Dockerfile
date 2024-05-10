FROM fedora:40
RUN dnf install -y sudo procps python3 python3-pip net-tools curl nano
#Reference: https://developers.redhat.com/blog/2019/04/24/how-to-run-systemd-in-a-container#enter_podman
RUN dnf -y install httpd; dnf clean all; systemctl enable httpd
ENTRYPOINT [ "/sbin/init" ]
#CMD [ "/bin/bash", "-c", "/usr/bin/tail -f /dev/null" ]
