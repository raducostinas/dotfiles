set -gx DOTFILES_PATH $HOME/.dotfiles

source $DOTFILES_PATH/shell/fish/conf.d/variables.fish

set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set EDITOR "nvim"
set VISUAL "nvim"

### "nvim" as manpager
set -x MANPAGER "nvim +Man!"
