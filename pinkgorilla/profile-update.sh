
# NOTE: This file is generated from ~/.dotfiles/System.org.  Please see commentary there.

GREEN='\033[1;32m'
NC='\033[0m'
GUIX_EXTRA_PROFILES=$HOME/.guix-extra-profiles

profiles=$*
if [[ $# -eq 0 ]]; then
    profiles="$GUIX_EXTRA_PROFILES/*";
fi

for profile in $profiles; do
  profileName=$(basename $profile)
  profilePath=$GUIX_EXTRA_PROFILES/$profileName

  echo
  echo -e "${GREEN}Updating profile:" $profilePath "${NC}"
  echo

  guix package --profile="$profilePath/$profileName" --manifest="$HOME/.config/guix/manifests/$profileName.scm"
done