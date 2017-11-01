FROM ruby:2.4
MAINTAINER Anton Karpenko <toshidono.it.work@gmail.com>

RUN apt-get -y update
RUN apt-get -y install nodejs
COPY . /app/
WORKDIR /app
RUN bundle install
EXPOSE 3000
CMD rm /app/tmp/pids/server.pid && RAILS_ENV=production rails server