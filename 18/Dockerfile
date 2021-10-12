FROM docker.io/library/buildpack-deps:buster
# ensure local python is preferred over distribution python
ENV PATH /usr/local/bin:$PATH

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8
RUN set -ex; \
	apt-get update; \
  apt-get install -y --no-install-recommends \
    jq \
    nginx \
    libbluetooth-dev \
    tk-dev \
    uuid-dev \
    libc-dev \
    pkg-config \
    re2c \
    ca-certificates \
    curl \
    gnupg \
    dirmngr \
    libargon2-dev \
    libonig-dev \
    libsodium-dev \
    bison \
    ; \
  architecture=$(dpkg --print-architecture); \
  case "$architecture" in \
    amd64) yj_name=yj-linux ;; \
    *) yj_name=yj-linux=$architecture ;; \
  esac ; \
  curl -o /usr/local/bin/yj \
    -L "https://github.com/sclevine/yj/releases/download/v5.0.0/$yj_name" ; \
  chmod +x /usr/local/bin/yj; \
	rm -rf /var/lib/apt/lists/*