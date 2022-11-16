alias c="clear"
alias ...="cd ../../"
alias ....="cd ../../../"
alias mkdir="mkdir -p"
alias cp="cp -rf"
alias rm="rm -rf"
alias vzsh="vim ~/.zshrc"
alias reload="source ~/.zshrc"
alias python='python3'
alias pip='pip3'
alias acme.sh='~/.acme.sh/acme.sh'

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

