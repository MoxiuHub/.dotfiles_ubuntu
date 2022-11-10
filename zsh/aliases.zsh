alias c="clear"
alias ...="cd ../../"
alias ....="cd ../../../"
alias mkdir="mkdir -p"
alias cp="cp -rf"
alias rm="rm -rf"
alias reload="source ~/.zshrc"
alias python='python3'
alias pip='pip3'

# remix-ide
alias startremix='/bin/zsh $HOME/scripts/start_remix.sh'
alias stopremix='/bin/zsh $HOME/scripts/stop_remix.sh'

# zsh
alias vzsh="vim ~/.zshrc"
alias rezsh="source ~/.zshrc"

# grep
alias cls='tput reset'
alias egrep='egrep -G'
alias fgrep='fgrep -G'
alias grep='grep -nir --exclude-dir={.git,dist,build,.idea,.vscode,.history,node_modules}'

# list
alias l.='exa -ld .* --color=auto --icons --no-permissions'
alias la='exa -a --color=auto --icons --no-permissions'
alias ls='exa -l --color=auto --icons --no-permissions'
alias ld='exa -D --color=auto --icons --no-permissions'
alias ll='exa -la --color=auto --icons --no-permissions'
alias lt='exa -T --color=auto --icons --no-permissions'

