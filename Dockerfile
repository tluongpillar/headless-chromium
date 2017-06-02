FROM ubuntu:14.04

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "build-essential", "git", "python"]
RUN ["git", "clone", "https://chromium.googlesource.com/chromium/tools/depot_tools.git", "~"]


