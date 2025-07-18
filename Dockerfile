FROM ruby:3.2

WORKDIR /app

COPY . .

RUN gem install bundler -v 2.7.0 \
 && bundle config set --local path 'vendor/bundle' \
 && bundle install

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
