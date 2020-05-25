

if [ $1 = "show" ]; then
  echo "Show"
  defaults write com.apple.finder AppleShowAllFiles TRUE;killall Finder
fi
if [ $1 = "hide" ]; then
  echo "Hide"
  defaults write com.apple.finder AppleShowAllFiles FALSE;killall Finder
fi

