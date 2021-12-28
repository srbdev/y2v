FROM debian:bullseye-slim

RUN apt update && \
    apt -y upgrade && \
    apt -y install python3 python3-pip && \
    apt -y install ffmpeg
RUN python3 -m pip install --upgrade youtube_dl

WORKDIR /downloads
ENTRYPOINT [ "youtube-dl", "-f", "22", "-o", "%(title)s.%(ext)s" ]