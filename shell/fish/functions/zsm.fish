#!usr/bin/env fish

function __zsm_attach_session
	set --local session_name (zellij ls | fzf-down \
  		--ansi \
		--delimiter " " \
  		--with-nth=1 \
  		--no-sort \
		--prompt " ⚡  " \
		--header "Select session: " \
		--layout reverse | awk '{print $1}')

	if ! test -n "$session_name"
		return 1
	end
	
	zellij a "$session_name"
	exit 0
	
end

function __zsm_create_session
	set --local session_name = ""
	read -l session_name --prompt-str="Session name (Leave empty to cancel):"
	
	if ! test -n "$session_name"
		return 1
	end
	
	zellij -s $session_name
	exit 0
end

function __zsm_delete_session
	zellij ls | fzf -m --header "Select sessions to delete" \
		| awk '{print $1}' | xargs -I {} zellij delete-session {}
	exit 0
end

function __zsm_list_session
	zellij ls | less -SR
end

function zsm --argument-names action --description "Manage zellij session"
	set --local zsm_version 1.0.0
	
	switch "$action"	
		case -v --version
            echo "zsm, version $zsm_version"
        case "" -h --help
            echo "Usage: zsm [attach|create|list|delete] Manage zellij sessions" 
            echo "Options:"
            echo "       -v, --version  Print version"
            echo "       -h, --help     Print this help message"
		case attach a
			__zsm_attach_session
		case create new
			__zsm_create_session
		case delete rm
			__zsm_delete_session
		case list ls
			__zsm_list_session
	end
end
