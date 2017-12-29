FROM ruby:2.3.5

RUN apt-get update -q -y
RUN apt-get install -q -y \
      libqt5webkit5-dev \
      qt5-default \
      xvfb \
      nodejs \
      npm \
      python-dev

RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install awscli --upgrade

RUN echo 'UTC' > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN echo 0.0.0.0 www.washos.test | tee -a /etc/hosts
RUN echo 0.0.0.0 manage.washos.test | tee -a /etc/hosts
RUN echo 0.0.0.0 api.washos.test | tee -a /etc/hosts
RUN echo 0.0.0.0 vendors.washos.test | tee -a /etc/hosts
