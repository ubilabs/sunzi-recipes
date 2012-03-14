# htpasswd
# $1: application name

if aptitude search '~i ^apache2-utils$' | grep -q apache2-utils; then
  echo "htpasswd already installed, skipping."
else
  aptitude -y install apache2-utils
  sed -i -e "s=# auth=auth_basic $1;\nauth_basic_user_file /var/www/$1/htpasswd;=g" files/nginx.conf
fi
