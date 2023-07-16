FROM ubuntu

RUN apt-get update -y && apt-get install -y curl ffmpeg

CMD ["curl", "-k", "-u", "$USERNAME:$PASSWORD", "--ignore-content-length", "$URL", "--output", "-", "|", "ffmpeg", "-i", "-", "-c", "copy", "-f", "rtsp", "rtsp://$SERVICE/$NAME"]
