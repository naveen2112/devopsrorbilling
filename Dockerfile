FROM ruby:2.7.3
RUN apt update -y && \
apt install -y git-core curl zlib1g-dev build-essential \
libssl-dev libreadline-dev libyaml-dev libsqlite3-dev webpack sqlite3 \
libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common \
libffi-dev libgdbm-dev libncurses5-dev automake libtool bison libffi-dev && \
apt-get install libpq-dev -y && \
apt install -y nodejs npm && \
npm install -g yarn
RUN apt-get install libpq-dev -y
RUN apt install git -y && apt install vim -y
RUN gem install nokogiri -v 1.15.7
RUN gem install zeitwerk -v 2.6.18
RUN gem install rails -v 6.0.4
RUN gem install bundler:2.2.21
WORKDIR /var/www
RUN git clone https://github.com/naveen2112/devopsrorbilling.git
WORKDIR  /var/www/devopsrorbilling
RUN bundle install
RUN chmod +x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]
CMD [ "bundle", "exec", "rails", "s" ]
