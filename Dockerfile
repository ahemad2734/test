FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y ffmpeg curl && \
    apt-get clean

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
