FROM debian:12.0-slim

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    ansible \
    bash \
    curl \
    git \
    gpg \
    jq \
    nano \
    neofetch \
    openssh-client \
    qrencode \
    rclone \
    zsh

RUN ssh-keygen -t ed25519 -C "dev-debian" -N "" -f ~/.ssh/id_ed25519
RUN ansible-galaxy collection install ansible.posix --force \
    && ansible-galaxy role install ofersadan85.ofersadan --force \
    && ansible localhost -m include_role -a name=ofersadan85.ofersadan

WORKDIR /work
VOLUME [ "/work" ]
CMD [ "zsh" ]
