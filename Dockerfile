FROM ruby:latest
RUN apt-get update
RUN apt-get install -y build-essential
WORKDIR /multi_factor_authentication
COPY Gemfile /multi_factor_authentication/
RUN bundle install
EXPOSE 3015
CMD rm -f /multi_factor_authentication/tmp/pids/server.pid && bundle exec rails s -p 3015 -b '0.0.0.0'
