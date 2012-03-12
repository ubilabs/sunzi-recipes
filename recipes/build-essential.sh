# Requirements for building ruby

if aptitude search '~i ^build-essential$' | grep -q build-essential; then
  echo 'requirements already installed, skipping.'
else
  aptitude -y install build-essential zlib1g-dev libssl-dev libreadline5-dev libcurl4-openssl-dev
fi
