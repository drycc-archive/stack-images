ARG VERSION
FROM docker.io/drycc/stack-images:${VERSION}
COPY *.sh /usr/bin/
RUN chmod +x /usr/bin/*.sh \
  && extensions.sh \
  && setup.sh
