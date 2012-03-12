# postfix

if grep -q "smtpd_use_tls=no" /etc/postfix/main.cf; then
  echo 'postfix already running, skipping.'
else
  sed -i -e "s/smtpd_use_tls=yes/smtpd_use_tls=no/" /etc/postfix/main.cf
  service postfix start
fi
