FROM python:3-alpine
RUN apk update && \
  apk add --no-cache git && \
  rm -f /tmp/* /etc/apk/cache/*

RUN git clone https://github.com/maurosoria/dirsearch /root/dirsearch && rm -rf /root/dirsearch/.git

ENTRYPOINT ["/root/dirsearch/dirsearch.py"]
WORKDIR /root/dirsearch/

CMD [ "-h"]

