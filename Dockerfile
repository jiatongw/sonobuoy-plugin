FROM buildpack-deps:jessie-scm

COPY run_local.sh /run.sh
RUN chmod +x /run.sh

CMD ["./run.sh"]
