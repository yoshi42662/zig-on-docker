FROM buildpack-deps:bullseye-scm

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install wget tar gzip xz-utils cmake

# RUN wget https://ziglang.org/builds/zig-0.10.0-dev.3900+ab4b26d8a.tar.xz
RUN wget https://ziglang.org/builds/zig-linux-x86_64-0.10.0-dev.3900+ab4b26d8a.tar.xz
RUN tar xvfJp zig-linux-x86_64-0.10.0-dev.3900+ab4b26d8a.tar.xz -C /usr/local/
ENV PATH "$PATH:/usr/local/zig-linux-x86_64-0.10.0-dev.3900+ab4b26d8a"
RUN echo $PATH

WORKDIR /var/www
