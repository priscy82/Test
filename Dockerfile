FROM quay.io/lyfe00011/md:beta

WORKDIR /root

# Install git & yarn if not already in the base image
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

CMD git clone https://github.com/lyfe00011/levanter.git /root/LyFE && \
    cd /root/LyFE && \
    yarn install && \
    npm start
