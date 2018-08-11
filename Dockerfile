FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /base
WORKDIR /base
COPY Gemfile /base/Gemfile
COPY Gemfile.lock /base/Gemfile.lock
RUN bundle install
COPY . /base
