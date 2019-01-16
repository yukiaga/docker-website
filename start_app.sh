#!/bin/sh

BUNDLER_PATH=./vendor/bundle # docker-composeのworkdirから相対パス

#pidファイルが残ったままの場合、削除する

if [[ -f ./tmp/pids/server.pid ]]
then
  rm ./tmp/pids/server.pid
fi

bundle install --path=$BUNDLER_PATH
bundle exec rails s -b 0.0.0.0

