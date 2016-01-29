# Remove Fish Welcome Message
set -e fish_greeting

# Setup rbenv
set -x PATH $HOME/.rbenv/bin $PATH
status --is-interactive; and source (rbenv init -|psub)

# autoload files
for f in ~/.config/fish/config.d/*.fish
  source $f
end