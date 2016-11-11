FROM alpine:3.4

RUN apk upgrade && apk add --update ruby-dev \
                                    ca-certificates \
                                    ruby-io-console \
                                    ruby-json \
                                    ruby-bigdecimal \
                                    ruby-irb \
                                    tzdata \
                                    build-base \
                                    openssh \
                                    libffi-dev \
                                    libxml2-dev \
                                    linux-headers \
                                    sqlite-dev \
                                    nodejs

RUN mkdir -p /usr/src/app
ADD . /usr/src/app
WORKDIR /usr/src/app

RUN gem install bundler --no-ri --no-rdoc && bundle install

EXPOSE 3000

ENTRYPOINT bundle exec rails s
