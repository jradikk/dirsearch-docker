FROM bwits/docker-git-alpine

WORKDIR /tmp/
RUN git clone https://github.com/maurosoria/dirsearch && rm -rf /tmp/dirsearch/.git


FROM python:3-alpine

WORKDIR /root/
COPY --from=0 /tmp/dirsearch dirsearch
RUN pip3 install -r ./dirsearch/requirements.txt

ENTRYPOINT ["/root/dirsearch/dirsearch.py"]
WORKDIR /root/dirsearch/

CMD [ "-h"]

