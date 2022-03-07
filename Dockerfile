FROM ruby:3.0.0

COPY . /app

WORKDIR /app

RUN bundle install

CMD ["rake"]
