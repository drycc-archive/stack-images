FROM docker.io/library/ubuntu:18.04
COPY *.sh /usr/bin/
RUN chmod +x /usr/bin/*.sh \
  && mirrors.sh \
  && extensions.sh \
  && setup.sh
