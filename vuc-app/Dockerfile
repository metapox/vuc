FROM ruby:2.6
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && mkdir /opt/vuc-app \
    && mkdir /opt/vuc-app/tmp \
    && mkdir /opt/vuc-app/tmp/sockets \
    && mkdir /opt/vuc-app/tmp/pid \
    && mkdir /opt/vuc-app/log

WORKDIR /opt/vuc-app
COPY Gemfile /opt/vuc-app/Gemfile
RUN bundle install
COPY . /opt/vuc-app
EXPOSE 8080

CMD ["bundle", "exec", "unicorn", "-c", "/opt/vuc-app/unicorn.rb"]
