# htpasswd

if aptitude search '~i ^apache2-utils$' | grep -q apache2-utils; then
  echo "htpasswd already installed, skipping."
else
  aptitude -y install apache2-utils
fi
