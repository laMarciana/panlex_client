FROM ruby:2.4.3
ENV APP_HOME /app/
ENV LIB_DIR lib/panlex-client/
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev libxml2-dev libxslt1-dev nodejs
RUN mkdir -p $APP_HOME/$LIB_DIR
WORKDIR $APP_HOME
COPY Gemfile *gemspec $APP_HOME
RUN bundle install
