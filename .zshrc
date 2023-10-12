bindkey -v

setopt PROMPT_SUBST

generate_git_prompt() {
  local git_branch
  git_branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [ -n "$git_branch" ]; then
    echo " at %F{red}$git_branch%f"
  fi
}

PROMPT='%F{green}%n@%m%f in %F{blue}%~%f$(generate_git_prompt)
%(!.#.$) '

HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.zsh.history

export EDITOR="nvim"
export ANDROID_HOME=$HOME/Android/Sdk
export PATH="$PATH:/.cargo/bin:/.local/bin:/home/andrey/.local/share/gem/ruby/3.0.0/bin:/home/andrey/go/bin:/home/andrey/.local/bin"
export PATH=$PATH:$ANDROID_HOME/tools

export PATH

alias ls='ls --color=auto'
alias mkdir='mkdir -vp'
alias c="clear"
alias uuid="node ~/.scripts/uuid.js"
alias nvimrc="nvim ~/.config/nvim/"
alias nvide="neovide --multigrid"

source /opt/asdf-vm/asdf.sh

source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

bindkey '^l' autosuggest-accept
