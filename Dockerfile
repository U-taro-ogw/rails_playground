FROM ruby:3.2-alpine
ENV LANG="C.UTF-8" \
    PACKAGES="curl-dev build-base alpine-sdk tzdata sqlite-dev less ruby-dev nodejs"

RUN apk update && \
    apk add --no-cache --update $PACKAGES

WORKDIR /var/www

COPY ./ ./

RUN gem install bundler && \
    bundle install --jobs=4

EXPOSE 3000

