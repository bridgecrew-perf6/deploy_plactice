FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y \
		build-essential \
		libpq-dev \
    node.js \
    yarn \
		vim
ENV LANG C.UTF-8
WORKDIR /deploy_plactice
COPY Gemfile Gemfile.lock /deploy_plactice/
RUN bundle install
