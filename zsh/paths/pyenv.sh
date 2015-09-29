#!/bin/bash
export PATH="$HOME/.pyenv/bin:$PATH"

if which pyenv > /dev/null; then
  eval "$(pyenv init -)"
fi
