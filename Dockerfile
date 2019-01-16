FROM ruby:2.3.1
RUN apt update
RUN apt -y install nodejs
RUN apt -y install vim
RUN apt -y install mysql-client

