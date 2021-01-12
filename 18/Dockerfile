FROM docker.io/library/ubuntu:18.04
COPY setup.sh /tmp/setup.sh
COPY mirrors.sh /tmp/mirrors.sh
RUN chmod +x /tmp/mirrors.sh \
  && /tmp/mirrors.sh \
  && chmod +x /tmp/setup.sh \
  && /tmp/setup.sh
