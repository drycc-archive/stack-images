ARG VERSION
FROM docker.io/drycc/stack-images:${VERSION}
COPY * /usr/bin/
RUN chmod +x /usr/bin/*.sh \
  && extensions.sh \
  && setup.sh
