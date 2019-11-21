# 
#                                               _ _____    _ _ _             
#   ___ ___  _ __ ___  _ __ ___   __ _ _ __   __| | ____|__| (_) |_ ___  _ __ 
#  / __/ _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` |  _| / _` | | __/ _ \| '__|
# | (_| (_) | | | | | | | | | | | (_| | | | | (_| | |__| (_| | | || (_) | |   
#  \___\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|_____\__,_|_|\__\___/|_|   
#                                                                             
# 
# ------------------------------------------------------------------------------
# Description
# -----------
#
# edit the current command or the last command if the current buffer is empty in your default editor
#
# ------------------------------------------------------------------------------
# Authors
# -------
#
# * Ali Alrabeei <newaaa4@gmail.com>
#
# ------------------------------------------------------------------------------
# vession
# -----------
#
# 0.1.0 beta
#
# ------------------------------------------------------------------------------

autoload edit-command-line
zle -N edit-command-line
edit-in-editor(){
	set VISUAL = vim
	set EDITOR = vim
	[[ -z $BUFFER ]] && zle up-history
	edit-command-line
}
zle -N edit-in-editor
bindkey '^e' edit-in-editor
