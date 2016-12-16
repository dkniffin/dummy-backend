FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /dummy-backend
WORKDIR /dummy-backend
ADD Gemfile /dummy-backend/Gemfile
ADD Gemfile.lock /dummy-backend/Gemfile.lock
RUN bundle install
ADD . /dummy-backend
