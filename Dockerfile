FROM alpine:3

RUN apk add --no-cache python3 py3-pip ffmpeg
RUN python3 -m pip install --upgrade youtube_dl

RUN adduser -h /home/youtuber -D youtuber
USER youtuber
RUN mkdir /home/youtuber/downloads
WORKDIR /home/youtuber/downloads
ENTRYPOINT [ "youtube-dl", "-f", "22", "-o", "%(title)s.%(ext)s" ]