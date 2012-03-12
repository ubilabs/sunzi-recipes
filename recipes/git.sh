# git

if aptitude search '~i ^git-core$' | grep -q git-core; then
  echo 'git-core already installed, skipping.'
else
  aptitude -y install git-core
fi
