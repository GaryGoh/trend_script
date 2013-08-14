#!/bin/sh
echo "======= To install RVM ========"
curl -L https://get.rvm.io | bash -s stable
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >>~/.bashrc
source ~/.bashrc
rvm -v
echo "===== RVM install done ======="

echo "====== To install packages ======="
sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion
echo "======= Packages install done ========="

echo "======= To install Ruby ========="
rvm pkg install readline openssl
rvm install 2.0.0
rvm use 2.0.0 --default
echo "======= Ruby install done ========="

echo "======= To install rails 3.2.12 ========"
gem install rails 3.2.12
echo "======= Rails install done ======="

echo "====== Deploy Trend__QR ====="
cd ~/
pwd
/home/jason/
mkdir www
cd www
git clone https://github.com/GaryGoh/Trend__QR.git
cd Trend__QR
bundle install
echo "====== Deploy done ========"
