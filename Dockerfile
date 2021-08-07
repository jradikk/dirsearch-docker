FROM bwits/docker-git-alpine

WORKDIR /tmp/
RUN git clone https://github.com/maurosoria/dirsearch && rm -rf /tmp/dirsearch/.git
RUN pip3 install -r requirements.txt

FROM python:3-alpine

WORKDIR /root/
COPY --from=0 /tmp/dirsearch dirsearch

ENTRYPOINT ["/root/dirsearch/dirsearch.py"]
WORKDIR /root/dirsearch/

CMD [ "-h"]

