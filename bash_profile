[[ -s ~/.bashrc ]] && source ~/.bashrc
[[ -s ~/.git-prompt.sh ]] && source ~/.git-prompt.sh

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
