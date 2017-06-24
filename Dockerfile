FROM ruby:2.4.1
RUN apt-get update -qq \
    && apt-get install -y --no-install-recommends -qq \
    nano build-essential libpq-dev nodejs mysql-client \
    npm \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/app

COPY . /opt/app

EXPOSE 3000
