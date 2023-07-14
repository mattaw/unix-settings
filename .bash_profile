export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
