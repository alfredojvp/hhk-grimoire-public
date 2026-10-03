#!/bin/zsh
# Public helper only. Keep private profiles outside this repository.
setopt NO_UNSET

vpn_off() {
  local active profile
  active=$(sudo wg show interfaces) || return 1
  for profile in co ve us; do
    if [[ " $active " == *" $profile "* ]]; then
      sudo wg-quick down "$profile" || return 1
    fi
  done
  print -- "Managed VPN profiles disconnected. Other interfaces are unchanged."
}

case ${1:-} in
  co|ve|us|off|status) ;;
  *) print -u2 -- 'Usage: vpn [co|ve|us|off|status]'; exit 2 ;;
esac
if (( ! $+commands[wg] || ! $+commands[wg-quick] || ! $+commands[sudo] )); then
  print -u2 -- 'Required commands: wg, wg-quick, sudo.'
  exit 1
fi
case $1 in
  co|ve|us)
    vpn_off || exit 1
    if sudo wg-quick up "$1"; then
      print -- "Connected to managed VPN profile: $1"
    else
      print -u2 -- 'VPN connection failed. Traffic may use the normal connection.'
      exit 1
    fi
    ;;
  off) vpn_off ;;
  status) sudo wg show ;;
esac
