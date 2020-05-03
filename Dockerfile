FROM ruby:2.6.5

RUN gem install bundler:2.1.1

COPY Gemfile Gemfile.lock /app/
WORKDIR /app

ADD . /app

RUN bundle
EXPOSE 3000

CMD /usr/local/bin/ruby helloworld.rb -p 3000 -o '0.0.0.0'