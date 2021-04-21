alias yarn="yarn --use-yarnrc $HOME/.config/yarn/.yarnrc"

source ~/.config/zinit/bin/zinit.zsh

zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting
zinit load zdharma/history-search-multi-word
zinit load zsh-users/zsh-completions
zinit load zpm-zsh/colorize
zinit load ael-code/zsh-colored-man-pages
zinit ice pick"async.zsh" src"pure.zsh"
zinit light sindresorhus/pure
autoload -U compinit && compinit
