#!/bin/bash
# Installs customized IntelliJ configs into your user configs.

echo "Installing customized IntelliJ configs..."

CONFIGS="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/configs"

for i in $HOME/Library/Preferences/IntelliJIdea*  \
         $HOME/Library/Preferences/IdeaIC*        \
         $HOME/Library/Preferences/AndroidStudio* \
         $HOME/.IntelliJIdea*/config              \
         $HOME/.IdeaIC*/config                    \
         $HOME/.AndroidStudio*/config
do
  if [[ -d $i ]]; then
    # Install templates
    mkdir -p $i/templates
    cp -frv "$CONFIGS/templates"/* $i/templates
  fi
done

echo "Done."
echo ""
echo "Restart IntelliJ and/or AndroidStudio."
