FROM buildpack-deps:jessie-scm

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["./run.sh"]
