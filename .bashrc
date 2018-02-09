# Bash runtime configuration

echo -n "Uptime: "; uptime

# Set Prompt
PS1='$(__git_ps1 "(%s)")\u:\W\$ '

# Set Command Aliases
alias ls="ls -AG"
alias ll="ls -lAhG"
alias up="cd .."
alias home="cd ~"

# Set History Options
export HISTCONTROL=ignoreboth   #ignores dupes and commands prefixed with spaces
export HISTIGNORE="h:history:pwd:exit:ls:ll"    #ignore these commands

# Set Grep Options
export GREP_OPTIONS="--color=auto"

# Add HomeBrew System Binaries to PATH
export PATH="/usr/local/sbin:$PATH"

# Bash Tab Completion
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
    . /usr/local/share/bash-completion/bash_completion
fi

# Set Java version
#export JAVA_HOME=`/usr/libexec/java_home -v '1/8*'`
export JAVA_HOME=`/usr/libexec/java_home -v '9*'`

# Ensure jlink is added to PATH
export PATH="$JAVA_HOME/bin:$PATH"

# Add Rust to path
export PATH="$HOME/.cargo/bin:$PATH"

# Add joggle
if [ -f /usr/local/jds/joggle.sh ]; then
  export PATH="/usr/local/jds:$PATH"
  alias joggle=". $(which joggle.sh)"
fi

# Set Editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# nvim typo alias
alias nivm=nvim

eval "$(pyenv init -)"
#eval "$(rbenv init -)"
