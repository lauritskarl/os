FROM ghcr.io/lauritskarl/bootc-server:latest
ADD etc etc
RUN dnf -y install \
  bitcoin-core-server \
  bitcoin-core-utils
RUN dnf clean all
RUN systemctl enable bitcoin.service
RUN bootc container lint
