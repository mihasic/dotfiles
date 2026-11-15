autoload -Uz compinit
compinit

typeset -U path PATH
path=("$HOME/.local/bin" "$HOME/.bun/bin" "$HOME/.rd/bin" $path)
source "$HOME/.cargo/env"
export CLICOLOR=1

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(fnm env --use-on-cd --shell zsh)"
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --style=numbers --line-range=:500 {}'"
alias fp="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
source <(fzf --zsh)
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"
autoload -Uz bashcompinit && bashcompinit
# complete -C "${commands[aws_completer]}" aws
source "$HOME/.bun/_bun"
if [[ "${AGTERM_ENABLED:-}" == 1 ]]; then
  source "$HOME/.config/agterm/agent-status/shell/integration.sh"
fi

function y() {
  local tmp cwd
  tmp="$(mktemp -t yazi-cwd.XXXXXX)" || return
  command yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [[ -n "$cwd" && "$cwd" != "$PWD" && -d "$cwd" ]] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}
