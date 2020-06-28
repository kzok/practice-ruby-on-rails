FROM ruby:2.6

WORKDIR /workspace
COPY Gemfile Gemfile.lock /workspace/

RUN apt update -qq \
	&& apt install -y nodejs postgresql-client libpq-dev \
	&& gem install bundler \
	&& bundle install
