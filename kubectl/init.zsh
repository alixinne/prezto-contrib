#
# Provides kubectl aliases and functions.
#
# Authors:
#   Alix Tavernier <alix.tavernier@pm.me>
#
# Original source:
#   https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/kubectl
#

# Return if kubectl is not installed
if (( ! $+commands[kubectl] )); then
  return 1
fi

# Load completion
source <(kubectl completion zsh)

# Load aliases
source "${0:h}/alias.zsh"
