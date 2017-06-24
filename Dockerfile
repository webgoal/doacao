FROM ruby:2.4.1
RUN apt-get update -qq \
    && apt-get install -y --no-install-recommends -qq \
    nano build-essential libpq-dev nodejs mysql-client \
    npm \
    && rm -rf /var/lib/apt/lists/*
EXPOSE 3000
WORKDIR /opt/app
CMD ["rails", "server", "-p", "3000", "-b", "0.0.0.0"]
