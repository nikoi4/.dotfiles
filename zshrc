ZSH=$HOME/.oh-my-zsh

# Uncomment the following line to automatically update without prompting.
 DISABLE_UPDATE_PROMPT="true"
# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# You can change the theme with another one:
 #   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
 ZSH_THEME="lambda-gitster"

# Useful plugins
 plugins=(gitfast last-working-dir common-aliases zsh-syntax-highlighting history-substring-search zsh-autosuggestions)

# Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
 export HOMEBREW_NO_ANALYTICS=1

# Actually load Oh-My-Zsh
 source "${ZSH}/oh-my-zsh.sh"
 unalias rm # No interactive rm by default (brought by plugins/common-aliases)

# # Load rbenv if installed
# export PATH="${HOME}/.rbenv/bin:${PATH}"
# type -a rbenv > /dev/null && eval "$(rbenv init -)"
#
# # Rails and Ruby uses the local `bin` folder to store binstubs.
# # So instead of running `bin/rails` like the doc says, just run `rails`
# # Same for `./node_modules/.bin` and nodejs
# export PATH="./bin:./node_modules/.bin:${PATH}:/usr/local/sbin"

# Store your own aliases in the ~/.aliases file and load the here.
 [[ -f "$HOME/.aliases"  ]] && source "$HOME/.aliases"
# vim mode in promt
 bindkey -v
# Encoding stuff for the terminal
 export LANG=en_US.UTF-8
 export LC_ALL=en_US.UTF-8
 export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'
 export VISUAL=vim
 export EDITOR="$VISUAL"
 export BUNDLER_EDITOR="$VISUAL"

# fixing tmux to adopt same color
 # alias tmux='TERM=xterm-256color tmux'

# custom commands
timer (){
	MIN=$1 && for i in $(jot - $(($MIN*60)) 1); do sleep 1; done;  MSG=$2; osascript -e "display notification \"${MSG}\" with title \"Alert\""
}


# keep it as last line
# source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
