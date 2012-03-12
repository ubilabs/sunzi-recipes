# imagemagick

if aptitude search '~i ^imagemagick$' | grep -q imagemagick; then
  echo "imagemagick already installed, skipping."
else
  aptitude -y install imagemagick
fi
