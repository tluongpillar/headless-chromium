FROM ubuntu:14.04

ADD /scripts/install_chromium.sh /
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "build-essential", "git", "python"]
RUN ["/install_chromium.sh"]

