FROM statwonk/base
MAINTAINER Christopher Peters "cpeter9@gmail.com"

ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -qq -y \
    libjpeg-dev \
    libpng-dev \
    libpq-dev \
    libxml2-dev \
    libxslt1-dev \
    postgresql-client

# Needed by 'pillow' package.
RUN ln -s /usr/lib/x86_64-linux-gnu/libjpeg.so /usr/lib
RUN ln -s /usr/lib/x86_64-linux-gnu/libfreetype.so.6 /usr/lib/libfreetype.so
RUN ln -s /usr/lib/x86_64-linux-gnu/libz.so /usr/lib

# Service
EXPOSE 80
