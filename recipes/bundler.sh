# bundler

source /etc/profile.d/rbenv.sh
if gem list | grep -q bundler; then
  echo 'bundler already installed, skipping.'
else
  gem install bundler -d --no-rdoc --no-ri
  rbenv rehash
fi
