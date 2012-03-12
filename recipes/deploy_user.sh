# deploy user
# $1: application name

if [ -d /home/deploy ]; then
  echo 'deploy user already exists, skipping.'
else
  mkdir -p /var/www/$1/shared/pids
  mkdir -p /var/www/$1/shared/log

  useradd -m deploy
  chown -R deploy:deploy /var/www/$1
  chmod -R 775 /var/www/$1
  mkdir /home/deploy/.ssh
  mv files/deploy_key /home/deploy/.ssh/authorized_keys
  mv files/ssh_env /home/deploy/.ssh/environment
  chown -R deploy:deploy /home/deploy/.ssh
  chmod 400 /home/deploy/.ssh/authorized_keys
  su deploy -c "ssh-keygen -q -P '' -f ~/.ssh/id_rsa"

  echo "PermitUserEnvironment yes" >> /etc/ssh/sshd_config
  service ssh restart
fi
