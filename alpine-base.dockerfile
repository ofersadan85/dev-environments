FROM alpine:3.18.0

RUN apk update \
    && apk upgrade \
    && apk add --no-cache \
    ansible \
    bash \
    curl \
    git \
    gpg \
    jq \
    libqrencode \
    nano \
    neofetch \
    openssh-client \
    rclone \
    zsh

RUN ssh-keygen -t ed25519 -C "dev-alpine" -N "" -f ~/.ssh/id_ed25519
RUN ansible-galaxy collection install ansible.posix --force \
    && ansible-galaxy role install ofersadan85.ofersadan --force \
    && ansible localhost -m include_role -a name=ofersadan85.ofersadan

WORKDIR /work
VOLUME [ "/work" ]
CMD [ "zsh" ]
