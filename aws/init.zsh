#
# Provides aws aliases and functions.
#
# Authors:
#   Alix Tavernier <alix.tavernier@pm.me>
#

# Return if aws is not installed
if (( ! $+commands[aws] )); then
  return 1
fi

# Load completion
if ! bashcompinit >/dev/null 2>&1; then
  autoload -Uz bashcompinit
  bashcompinit
fi

complete -C $(which aws_completer) aws

# Load aliases
source "${0:h}/alias.zsh"
