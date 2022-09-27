#!/usr/bin/env bash
PROMPT_COMMAND="radu_theme"

MIDDLE_CHARACTER=""
BLUE_COLOR="34"
YELLOW_COLOR="33"
GREEN_COLOR="32"
RED_COLOR="31"

radu_theme() {
  LAST_CODE="$?"
  current_dir=$(dot core short_pwd)
  STATUS_COLOR=$GREEN_COLOR

  if [ $LAST_CODE -ne 0 ]; then
    STATUS_COLOR=$RED_COLOR
  fi

  if [ -z "$RADU_THEME_MINIMAL" ]; then
    export PS1="\[\e[${STATUS_COLOR}m\]{\[\e[m\]${MIDDLE_CHARACTER}\[\e[${STATUS_COLOR}m\]}\[\e[m\] \[\e[33m\]${current_dir}\[\e[m\] "
  else
    export PS1="\[\e[${STATUS_COLOR}m\]{\[\e[m\]${MIDDLE_CHARACTER}\[\e[${STATUS_COLOR}m\]}\[\e[m\] "
  fi
}
