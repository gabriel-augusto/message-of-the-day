FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /message_of_the_day
WORKDIR /message_of_the_day
ADD Gemfile /message_of_the_day/Gemfile
ADD Gemfile.lock /message_of_the_day/Gemfile.lock
RUN bundle install
ADD . /message_of_the_day
