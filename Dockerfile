ARG PORT
FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
ENV USERNAME=user
ENV PASSWORD=pass
EXPOSE $PORT
COPY index.html /var/www/html/
CMD ["apache2ctl", "-D", "FOREGROUND"]