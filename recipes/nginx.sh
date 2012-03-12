# nginx
# $1: application name

if aptitude search '~i ^nginx$' | grep -q nginx; then
  echo "nginx already installed, skipping."
else
  aptitude -y install nginx
  rm /etc/nginx/sites-enabled/*
  sed -i -e "s/APP_NAME/$1/g" files/nginx.conf
  mv files/nginx.conf /etc/nginx/sites-enabled/$1
  service nginx start
fi
