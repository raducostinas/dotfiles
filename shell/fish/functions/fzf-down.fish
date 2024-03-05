function fzf-down
	fzf --height 50% --min-height 20 --border --bind ctrl-p:toggle-preview --bind ctrl-a:select-all $argv
end
