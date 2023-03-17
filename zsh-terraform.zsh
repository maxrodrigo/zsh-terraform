autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

_zsh_terraform_workspace() {
  if [[ -d .terraform ]]; then
    local workspace
    workspace=$(command terraform workspace show)
    echo -n $workspace
  fi
}

complete -o nospace -C /opt/homebrew/bin/terraform terraform