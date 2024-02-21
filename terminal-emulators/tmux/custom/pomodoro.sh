show_pomodoro() { # save this module in a file with the name <module_name>.sh
  local index=$1 # this variable is used by the module loader in order to know the position of this module 
  local icon="$(get_tmux_option "@catppuccin_pomodoro_icon" "󰥔")" # <Use an icon from [nerdfonts](https://www.nerdfonts.com/cheat-sheet)>
  local color="$(get_tmux_option "@catppuccin_pomodoro_color" "#ff6347")" # <Use one of the default theme colors (ex: $thm_orange), or provide a color code (ex: #ef9f76)>
  local text="$(get_tmux_option "@catppuccin_pomodoro_text" "")" # <Provide the text that you want to be displayed>

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
