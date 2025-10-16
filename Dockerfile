FROM archlinux:latest

RUN pacman -Sy --noconfirm \
    zig \
    git \
    less

ARG USER
ARG UID
RUN useradd -m -s /bin/bash -u ${UID:-2222} $USER
USER ${USER}
