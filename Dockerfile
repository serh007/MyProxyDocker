FROM debian:buster

# Встановлення залежностей та torproxy
RUN apt-get update && apt-get install -y tor torsocks

# Конфігурація torproxy
RUN echo 'SOCKSPort 0.0.0.0:9050' >> /etc/tor/torrc

EXPOSE 9050

# Запуск torproxy
CMD ["/usr/bin/tor"]