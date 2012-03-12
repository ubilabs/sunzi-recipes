# mysql

if aptitude search '~i ^mysql-server$' | grep -q mysql-server; then
  echo "mysql already installed, skipping."
else
  aptitude -y install mysql-server libmysqlclient-dev
fi
