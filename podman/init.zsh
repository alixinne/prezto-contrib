#
# Provides podman completion
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

if (( $+commands[podman] )); then
  if [[ ! -f $_functions/_podman ]]; then
    podman completion zsh > $_functions/_podman
  fi
fi
