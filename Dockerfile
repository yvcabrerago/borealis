FROM debian:stable-slim
LABEL AUTHOR="yvcabrerago@gmail.com>"

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends avahi-utils && \
    apt-get clean

COPY entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh

ENTRYPOINT ["/opt/entrypoint.sh"]
CMD ["-at"]