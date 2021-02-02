ARG VERSION
FROM docker.io/drycc/stack-images:${VERSION}
COPY setup.sh /tmp/setup.sh
RUN chmod +x /tmp/setup.sh \
  && /tmp/setup.sh
