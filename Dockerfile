FROM alpine:3

RUN apk add curl curl-dev ffmpeg

CMD ["curl", "-k", "-u", "$USERNAME:$PASSWORD", "--ignore-content-length", "$URL", "--output", "-", "|", "ffmpeg", "-i", "-", "-c", "copy", "-f", "rtsp", "rtsp://$SERVICE/$NAME"]
