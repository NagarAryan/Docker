ARG PORT
FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
ENV USERNAME=user
ENV PASSWORD=pass
COPY index.html /var/www/html/
EXPOSE $PORT
CMD ECHO "The username of the user $USERNAME and their password is $PASSWORD"

