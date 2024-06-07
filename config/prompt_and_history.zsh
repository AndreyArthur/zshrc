setopt PROMPT_SUBST
setopt HIST_IGNORE_ALL_DUPS

autoload -Uz compinit && compinit

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

