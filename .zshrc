# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Oh-My-Zsh {{{1
export ZSH="$HOME/.oh-my-zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# plugins
# git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/z-shell/F-Sy-H.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/F-Sy-H
plugins=(
    aws
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

# Settings that must be applid before loading Oh-My-Zsh {{{2
# Set the theme
ZSH_THEME="powerlevel10k/powerlevel10k"
# 使用 区分大小写 完成
CASE_SENSITIVE="true"
# 修复慢粘贴
DISABLE_MAGIC_FUNCTIONS=true
#}}}

# 加载 oh-my-zsh
source $ZSH/oh-my-zsh.sh

# ZSH {{{1
# Set the default umask
umask 022

# OSTYPE specific settings
case "${OSTYPE}" in
    linux*)
        if (( $+commands[setxkbmap] )); then
            setxkbmap -option caps:escape_shifted_capslock
            setxkbmap -option altwin:swap_lalt_lwin
        fi
        ;;
    *) ;;
esac
#}}}

# Source files {{{2
# Load aliases
source ~/.dotfile/zsh/aliases.zsh

# Completion {{{3
# 设置描述格式以启用组支持
zstyle ':completion:*:descriptions' format '[%d]'
# 完成 `git checkout` 时禁用排序
zstyle ':completion:*:git-checkout:*' sort false
# 仅显示目标标记以完成 make 命令
zstyle ':completion:*:*:make::' tag-order 'targets variables'
# 在完成“ kill”时预览命令行参数
zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm -w -w"
#}}}

# Other {{{4
# disable highlighting of pasted text
zle_highlight=('paste:none')
#autoload -U compinit && compinit
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#}}}
