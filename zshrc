# If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux

source /usr/share/zsh/share/antigen.zsh

SPACESHIP_KUBECONTEXT_SHOW=false

antigen use oh-my-zsh

antigen bundle git
antigen bundle nvm
antigen bundle pyenv
antigen bundle rbenv
antigen bundle ssh-agent
antigen bundle tmux
antigen bundle archlinux

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship

antigen apply

typeset -g -A key

key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   history-substring-search-up
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" history-substring-search-down

