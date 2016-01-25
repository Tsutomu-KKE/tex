FROM ubuntu-debootstrap:14.04

ENV LANG ja_JP.UTF-8
RUN apt-get update --fix-missing && \
    apt-get install -y busybox ca-certificates wget language-pack-ja \
            texlive-lang-cjk texlive-math-extra xdvik-ja && \
    /bin/busybox --install && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /root
CMD ["bash"]
