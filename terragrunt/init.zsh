#
# Provides terragrunt aliases and functions.
#
# Authors:
#   Alix Tavernier <alix.tavernier@pm.me>
#

# Return if terragrunt is not installed
if (( ! $+commands[terragrunt] )); then
  return 1
fi

# Load aliases
source "${0:h}/alias.zsh"
