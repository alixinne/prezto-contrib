#
# Provides open-policy-agent aliases and functions.
#
# Authors:
#   Alix Tavernier <alix.tavernier@pm.me>
#

if (( $+commands[opa] )); then
  source <(opa completion zsh)
fi

if (( $+commands[conftest] )); then
  source <(conftest completion zsh)
fi
