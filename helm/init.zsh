#
# Provides helm aliases and functions.
#
# Authors:
#   Alix Tavernier <alix.tavernier@pm.me>
#

# Return if helm is not installed
if (( ! $+commands[helm] )); then
  return 1
fi

# Load completion
source <(helm completion zsh)

# Load aliases
source "${0:h}/alias.zsh"
