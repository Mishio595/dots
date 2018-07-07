# Aliases
alias ls='ls --color=auto'
alias la="ls -a"
alias ll="ls -al"
alias l.='ls -d .*'
alias pacman="aurman --noedit"
alias targz="tar -xvzf"
alias dots='git --git-dir=$HOME/.dots.git/ --work-tree=$HOME'
alias vim='nvim'
alias haste='hastebin'
alias bspwmrc='vim $HOME/.config/bspwm/bspwmrc'
alias sxhkdrc='vim $HOME/.config/sxhkd/sxhkdrc'
alias ..='cd ..'
alias c='clear'
alias update='pacman -Syu'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='colordiff'
alias vi='vim'
alias ping='ping -c 5'
alias rm='rm --preserve-root'
alias polylaunch='eval $HOME/.config/polybar/polylaunch.sh'

export EDITOR=vim
export PATH="$HOME/.cargo/bin:$PATH"
export RUST_SRC_PATH="/home/lynn/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"

# Prompt config
set -g theme_display_git yes
set -g theme_display_git_untracked no
set -g theme_display_git_ahead_verbose yes
set -g theme_git_worktree_support no
set -g theme_display_vagrant no
set -g theme_display_docker_machine no
set -g theme_display_hg no
set -g theme_display_virtualenv no
set -g theme_display_ruby no
set -g theme_display_user no
set -g theme_display_vi no
set -g theme_display_date no
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_title_display_path no
set -g theme_title_display_user no
set -g theme_title_use_abbreviated_path no
set -g theme_date_format "+%a %H:%M"
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts no
set -g theme_show_exit_status yes
set -g default_user your_normal_user
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 2
set -g theme_project_dir_length 2
# vim:ft=sh
