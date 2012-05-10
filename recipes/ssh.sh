# prepares root account for deployment

if [ -f /root/.ssh/environment ]; then
  echo 'ssh already configured, skipping.'
else
  mv files/ssh_env /root/.ssh/environment
  echo "PermitUserEnvironment yes" >> /etc/ssh/sshd_config
  service ssh restart
fi
