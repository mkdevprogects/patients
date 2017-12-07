FROM ruby:2.4
MAINTAINER Anton Karpenko <toshidono.it.work@gmail.com>

RUN apt-get -y update
RUN apt-get -y install nodejs
COPY . /app/
WORKDIR /app
RUN bundle install
EXPOSE 3000
CMD ./wait-for-it.sh -t 30 postgres:5432 && rake db:seed && rm -f /app/tmp/pids/server.pid && RAILS_ENV=development rails s -b 0.0.0.0 -p 3000