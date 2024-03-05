#!usr/bin/env fish
#
# Lists all zellij sessions
#
# Usage:
#   list-sessions
#
function list-sessions --description "Lists all zellij sessions"
	set --local selected_session (zellij list-sessions | fzf-down \
  --ansi \
	--delimiter " " \
  --with-nth=1 \
  --no-sort \
  --border-label ' sessions ' \
	--prompt " ⚡  " \
	--header "Select session: " \
	--pointer ▶ \
	--marker ⇒ \
	--layout reverse | awk '{print $1}')

	echo $selected_session


end

function zellij_run --description "Manage zellij session"
	set --local RED "$(echo -en '\033[0;31m')"
	set --local GREEN "$(echo -en '\033[0;32m')"
	set --local YELLOW "$(echo -en '\033[0;33m')"
	set --local BLUE "$(echo -en '\033[0;34m')"
	set --local PURPLE "$(echo -en '\033[0;35m')"
	set --local NC "$(echo -en '\033[0m')"

	clear
	echo -e "$GREEN Welcome to Zellij session manager!$NC \n\n"
end
