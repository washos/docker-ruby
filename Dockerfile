FROM circleci/ruby:2.4.9-node-browsers

USER root

RUN apt-get update -q -y
RUN apt-get install -q -y \
      qt5-default \
      libqt5webkit5-dev \
      gstreamer1.0-plugins-base \
      gstreamer1.0-tools \
      gstreamer1.0-x \
      xvfb \
      nodejs \
      python-dev

RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install awscli --upgrade

USER circleci
