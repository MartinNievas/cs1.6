from debian:unstable

RUN dpkg --add-architecture i386
RUN apt-get update && apt-get install eatmydata wget gnupg -y

RUN wget -nc https://dl.winehq.org/wine-builds/Release.key &&  apt-key add Release.key

RUN echo "deb https://dl.winehq.org/wine-builds/debian/ sid main" > /etc/apt/sources.list.d/winehq.list
RUN apt-get update && eatmydata apt-get install  winehq-stable -y

WORKDIR /root

RUN apt-get update && eatmydata apt-get install unrar-free -y

ADD bin bin

ENTRYPOINT wine bin/Counter-Strike\ 1.6/hl.exe -game cstrike -h 1280 -w 1920
