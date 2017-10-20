# Try with upper case and after lower case
	zstyle ':completion:*' matcher-list 'm:a-z=A-Z'
	zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
	zstyle ':completion:*' max-errors 1 numeric
	zstyle ':completion:*' menu select=2
	zstyle ':completion:*' use-cache on
	zstyle ':completion:*' cache-path ~/.zsh/cache
	autoload -Uz compinit zsh-mime-setup
	compinit

# 1 caracter on 3 can be a typo error
	zstyle -e ':completion:*:approximate:*' max-errors \
	    'reply=( $(( ($#PREFIX+$#SUFFIX)/3 )) numeric )'

# Match *[pattern], i.e auto completion for
	zstyle ':completion:*' completer _complete _match _approximate
	zstyle ':completion:*:match:*' original only
	zstyle ':completion:*:approximate:*' max-errors 1 numeric

## Group matches and Describe
	zstyle ':completion:*:matches' group 'yes'
	zstyle ':completion:*:options' description 'yes'
	zstyle ':completion:*:options' auto-description '%d'
	zstyle ':completion:*:descriptions' format $'\e[01;33m -- %d --\e[0m'
	zstyle ':completion:*:messages' format $'\e[01;35m -- %d --\e[0m'
	zstyle ':completion:*:warnings' format $'\e[01;31m -- No Matches Found --\e[0m'

#  Auto completion for killall
	compdef pkill=kill
	compdef pkill=killall
	zstyle ':completion:*:*:kill:*' menu yes select
	zstyle ':completion:*:processes' command 'ps -aux$USER'

# Killer feature, red dots when processing command :)
	expand-or-complete-with-dots()
	{
	  echo -n "\e[31m ... ⌛  ... \e[0m"
	  zle expand-or-complete
	  zle redisplay
	}
	zle -N expand-or-complete-with-dots
	bindkey "^I" expand-or-complete-with-dots
