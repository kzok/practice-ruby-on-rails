# https://docs.docker.com/compose/rails/
FROM ruby:2.6.5

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client libpq-dev
RUN mkdir /project
WORKDIR /project
COPY Gemfile /project/Gemfile
COPY Gemfile.lock /project/Gemfile.lock
RUN bundle install

COPY docker/docker-entrypoint.sh /var/tmp
CMD bash -E /var/tmp/docker-entrypoint.sh
