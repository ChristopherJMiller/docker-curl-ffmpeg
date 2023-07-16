FROM alpine:3

RUN apk add curl ffmpeg

CMD ["curl", "-k", "-u", "$USERNAME:$PASSWORD", "--ignore-content-length", "$URL", "--output", "-", "|", "ffmpeg", "-i", "-", "-c", "copy", "-f", "rtsp", "rtsp://$SERVICE/$NAME"]
