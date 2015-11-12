FROM debian:latest

RUN apt-get update && apt-get install -y apache2

COPY make_index.sh /
ENTRYPOINT ["/make_index.sh"]
RUN chmod +x /make_index.sh

EXPOSE 80

