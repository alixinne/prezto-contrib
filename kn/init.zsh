#
# Provides knative cli (kn) aliases and functions.
#
# Authors:
#   Alix Tavernier <alix.tavernier@pm.me>
#

_functions=${0:a:h}/functions
fpath=($fpath $_functions)
if [[ -d $_functions ]]; then
  return 0
fi

mkdir -p $_functions

if (( $+commands[kn] )); then
  if [[ ! -f $_functions/_kn ]]; then
    kn completion zsh > $_functions/_kn
  fi
fi
