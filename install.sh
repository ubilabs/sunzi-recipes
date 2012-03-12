#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
aptitude update
aptitude -y safe-upgrade

source recipes/build-essential.sh
source recipes/git.sh
source recipes/rbenv.sh $(cat attributes/ruby_version)
source recipes/bundler.sh
source recipes/mysql.sh
source recipes/imagemagick.sh
source recipes/htpasswd.sh
source recipes/deploy_user.sh $(cat attributes/application_name)
source recipes/nginx.sh $(cat attributes/application_name)
source recipes/postfix.sh

echo ""
cat /home/deploy/.ssh/id_rsa.pub
echo ""
echo "Yay, we're finished!"
echo "Please add the above key to https://github.com/ubilabs/$(cat attributes/application_name)/admin/keys"
