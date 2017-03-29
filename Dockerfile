FROM ruby:2.2.6

RUN apt-get update -q -y
RUN apt-get install -q -y \
      libqt5webkit5-dev \
      qt5-default \
      xvfb \
      nodejs
