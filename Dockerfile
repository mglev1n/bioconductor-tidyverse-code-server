FROM bioconductor/bioconductor_docker:RELEASE_3_17

## Add system packages
#RUN apt-get update && apt-get -y install \
#     aria2 \
#     cmake \
#     openssh-client \
#     libssh-dev \
#     libcurl4-openssl-dev \
#     pandoc \
#     pandoc-citeproc \
#     curl \
#     gdebi-core \
#     && apt-get clean \
#     && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://code-server.dev/install.sh | sh

LABEL org.opencontainers.image.source=https://github.com/mglev1n/bioconductor-tidyverse-code-server