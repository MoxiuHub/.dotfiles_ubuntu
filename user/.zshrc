# Oh-My-Zsh {{{1
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# plugins
plugins=(
    colored-man-pages
    docker
    F-Sy-H
    git
    golang
    helm
    httpie
    kubectl
    npm
    terraform
    tmux
    vi-mode
    you-should-use
    z
    zsh-autosuggestions
)

# Theme {{{2
ZSH_THEME="powerlevel10k/powerlevel10k"

# 使用 区分大小写 完成
CASE_SENSITIVE="true"

# 修复慢粘贴
DISABLE_MAGIC_FUNCTIONS=true
#}}}

# 加载 oh-my-zsh
source $ZSH/oh-my-zsh.sh

#{{{ZSH
source ~/.dotfile/zsh/zalias.zsh
umask 022
if (( $+commands[setxkbmap] )); then
    setxkbmap -option caps:escape_shifted_capslock
    setxkbmap -option altwin:swap_lalt_lwin
fi
#}}}

# {{{ Completion 
# 设置描述格式以启用组支持
zstyle ':completion:*:descriptions' format '[%d]'
# 完成 `git checkout` 时禁用排序
zstyle ':completion:*:git-checkout:*' sort false
# 仅显示目标标记以完成 make 命令
zstyle ':completion:*:*:make::' tag-order 'targets variables'
# 在完成“ kill”时预览命令行参数
zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm -w -w"
#}}}

# {{{Other
zle_highlight=('paste:none')

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# acme.sh 配置
. "/root/.acme.sh/acme.sh.env"
#}}}
