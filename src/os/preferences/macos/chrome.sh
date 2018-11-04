#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Chrome\n\n"

execute "defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool true" \
    "Enable backswipe"

execute "defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool false" \
    "Expand chrome print dialog by default"

execute "defaults write com.google.Chrome DisablePrintPreview -bool false" \
    "Use chrome print preview dialog"

killall "Google Chrome" &> /dev/null
