FROM ruby:2.3.5

RUN apt-get update -q -y
RUN apt-get install -q -y \
      libqt5webkit5-dev \
      qt5-default \
      xvfb \
      nodejs \
      python-dev
