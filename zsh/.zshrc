if [[ $- != *i* ]]; then
	return
fi


typeset -g compfile="$HOME/.cache/.zcompdump"
SHELL=$(which zsh || echo '/bin/zsh')
KEYTIMEOUT=1
SAVEHIST=10000
HISTSIZE=10000
HISTFILE="$HOME/.cache/.zsh_history"
setopt HIST_FIND_NO_DUPS

	source /usr/share/zinit/zinit.zsh
	zinit load zsh-users/zsh-completions
	zinit light zsh-users/zsh-autosuggestions
	source $ZDOTDIR/syntax-theme.sh
	zinit light zdharma/fast-syntax-highlighting
	bindkey '^[[A' history-substring-search-up
	bindkey '^[[B' history-substring-search-down

	zinit load zsh-users/zsh-history-substring-search
	zinit load zdharma/history-search-multi-word
	zinit load zsh-users/zsh-completions
	zinit load zpm-zsh/colorize
	zinit load ael-code/zsh-colored-man-pages
	zinit load arzzen/calc.plugin.zsh
	zinit ice as"theme"
	zinit load reobin/typewritten

autoload -U compinit && compinit -u -d "$compfile"


