#!/usr/bin/env sh
set -e
cd ejemplo_banco
bundle install
bundle exec rake
cd ..
cd Kata1-Chopper
bundle install
bundle exec rake
cd ..
cd Kata2-Piedra-Papel-Tijera-Mono
bundle install
bundle exec rake
cd ..
cd Kata3-BatallaNaval
bundle install
bundle exec rake
cd ..
cd Kata4-Calculadora
bundle install
bundle exec rake


