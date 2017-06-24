#!/bin/bash
set -e

mv ~/Projects ~/.Projects || true
mv ~/projects ~/.projects || true
git pull
docker-compose pull && docker-compose build
docker-compose run web gem install bundle
docker-compose run web bundle install
