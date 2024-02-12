# ------------------------------------------------------------------------------
# Radu theme config
# ------------------------------------------------------------------------------
export RADU_THEME_MINIMAL=false
export RADU_THEME_MODE="dark"
export RADU_THEME_PROMPT_IN_NEW_LINE=true
export RADU_THEME_PWD_MODE="home_relative" # full, short, home_relative

# ------------------------------------------------------------------------------
# Languages
# ------------------------------------------------------------------------------
# export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
export JAVA_HOME="$HOME/.jenv/"
export M2_HOME="$HOME/.m2"
export GEM_HOME="$HOME/.gem"
export GOPATH="$HOME/01-Code/raducostinas/go:$HOME/01-Code/10labs/go"
export GO111MODULE="on"
#export GOPRIVATE="bitbucket.org/10labs_team"
export GVM_HOME="$HOME/.gvm"
export NVM_DIR="$HOME/.nvm"
# ------------------------------------------------------------------------------
# Apps
# ------------------------------------------------------------------------------
if [ "$RADU_THEME_MODE" = "dark" ]; then
  fzf_colors="pointer:#ebdbb2,bg+:#3c3836,fg:#ebdbb2,fg+:#fbf1c7,hl:#8ec07c,info:#928374,header:#fb4934"
else
  fzf_colors="pointer:#db0f35,bg+:#d6d6d6,fg:#808080,fg+:#363636,hl:#8ec07c,info:#928374,header:#fffee3"
fi

export FZF_DEFAULT_OPTS="--color=$fzf_colors --reverse"

# ------------------------------------------------------------------------------
# Path - The higher it is, the more priority it has
# ------------------------------------------------------------------------------
path+=(
  "$HOME/bin"
  "$DOTLY_PATH/bin"
  "$DOTFILES_PATH/bin"
  "$JAVA_HOME/bin"
  "$M2_HOME/bin"
  "$GEM_HOME/bin"
  "$GVM_HOME/bin"
  "$GOPATH/bin"
  "$HOME/.cargo/bin"
  "/usr/local/opt/ruby/bin"
  "/usr/lib/dart/bin"
  "/usr/local/opt/python/libexec/bin"
  "/opt/homebrew/bin"
  "/usr/local/bin"
  "/usr/local/sbin"
  "/bin"
  "/usr/bin"
  "/usr/sbin"
  "/sbin"
)

export path

# ------------------------------------------------------------------------------
# Default Editor 
# ------------------------------------------------------------------------------
export EDITOR=nvim 
