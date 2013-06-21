# change state of hidden file types on mac


# check if hidden files are visible and store result in a variable
isVisible=$(defaults read com.apple.finder AppleShowAllFiles)

# echo $isVisible

# toggle visibility based on variables value
if [ "$isVisible" = NO ]
then
  defaults write com.apple.finder AppleShowAllFiles YES
else
  defaults write com.apple.finder AppleShowAllFiles NO
fi

# force changes by restarting Finder
killall Finder