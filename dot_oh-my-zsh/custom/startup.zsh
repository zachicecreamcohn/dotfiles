if [ -f "$HOME/.env" ]; then
  set -a
  source "$HOME/.env"
  set +a
else
  echo "Warning: $HOME/.env file not found"
fi
