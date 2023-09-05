if status is-interactive
    # Commands to run in interactive sessions can go here
    alias pgstart="pg_ctl -D $PREFIX/var/lib/postgresql start"
    alias pgstop="pg_ctl -D $PREFIX/var/lib/postgresql stop"
    #alias soft="~/go/bin/soft"
    alias ls="ls -la"
    alias gp="git pull && git push"
    alias grep="rg"
    set -x PATH $PATH $HOME/go/bin
end
function fish_prompt
    set -l username "ahdeyy"
    set -l color_green (set_color yellow)
    set -l color_cyan (set_color cyan)
    set -l reset_color (set_color normal)
    set -l current_dir (pwd | sed "s|^$HOME|~|")
    set -l color_magenta (set_color magenta)
    if test  -d "$PWD/.git"
        set -l current_branch (git branch --show-current)
        echo -n -s "$color_green$username $color_cyan$current_dir$color_magenta($current_branch)$reset_color > "
    else
        echo -n -s "$color_green$username $color_cyan$current_dir$reset_color > "
    end
end