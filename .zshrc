export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@17/include"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# nvim mason
export PATH="$HOME/.local/share/nvim/mason/bin/:$PATH"

# fzf
source <(fzf --zsh)
alias fzf='fzf --preview="bat --color=always {}"'
alias fzfn='nvim $(fzf --preview="bat --color=always {}")'
alias fzfp='ps -ef | fzf | awk '{print $2}' | xargs kill'
bindkey '^F' fzf-cd-widget

# bat
export BAT_THEME="Visual Studio Dark+"

# bun completions
[ -s "/Users/joshuakeller/.bun/_bun" ] && source "/Users/joshuakeller/.bun/_bun"
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# git dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

eval "$(starship init zsh)"

