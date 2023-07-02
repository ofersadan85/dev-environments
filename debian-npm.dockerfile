FROM ofersadan85/dev:debian-base

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get upgrade -y \
    && apt-get install -y nodejs python3-pip \
    && apt-get clean

RUN python3 -m pip install --no-cache-dir pip pre-commit
