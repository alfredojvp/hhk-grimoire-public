# HHK-Grimoire — public shell configuration.
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
[[ -d "$HOME/.cargo/bin" ]] && export PATH="$HOME/.cargo/bin:$PATH"

# Optional dependencies: see README.md for their installation locations.
if [[ -r "$HOME/powerlevel10k/powerlevel10k.zsh-theme" ]]; then
  source "$HOME/powerlevel10k/powerlevel10k.zsh-theme"
  [[ -r "$HOME/.p10k.zsh" ]] && source "$HOME/.p10k.zsh"
fi
[[ -r "$HOME/.zsh_plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ]] && \
  source "$HOME/.zsh_plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
[[ -r "$HOME/.zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] && \
  source "$HOME/.zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

function hhk_random_fetch() {
  (( $+commands[fastfetch] )) || return 0
  local -a logos
  logos=("${XDG_CONFIG_HOME:-$HOME/.config}"/fastfetch/logos/*.txt(N))
  if (( ${#logos} )); then
    local random_logo=${logos[$(( RANDOM % ${#logos} + 1 ))]}
    command fastfetch --logo "$random_logo" --logo-color-1 light_red --logo-color-2 light_red
  else
    command fastfetch
  fi
}
alias fetch='hhk_random_fetch'
alias fastfetch='hhk_random_fetch'
[[ -o interactive ]] && hhk_random_fetch

function vpn() {
  local manager="${HHK_GRIMOIRE_DIR:-$HOME/HHK-Grimoire}/scripts/vpn_manager.sh"
  if [[ ! -f "$manager" ]]; then
    print -u2 -- "VPN helper not found. Set HHK_GRIMOIRE_DIR to your checkout."
    return 1
  fi
  command zsh "$manager" "$@"
}
