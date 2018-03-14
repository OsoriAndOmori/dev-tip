# MAVEN PATH
# export M2_HOME=~/dev/apache-maven
# export M2=$M2_HOME/bin
# export PATH=$M2:$PATH


# GIT
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


# ALIAS
case `uname` in
    Linux)
        # https://superuser.com/a/109546
        alias ls="ls --color -h --group-directories-first"
        alias ll="ls --color -h --group-directories-first"
        ;;
    Darwin)
        alias ls="ls -lG"
        alias ll="ls -lG"
        ;;
    *)
esac

# define colors
C_DEFAULT="\[\033[m\]"
C_WHITE="\[\033[1m\]"
C_BLACK="\[\033[30m\]"
C_RED="\[\033[31m\]"
C_GREEN="\[\033[32m\]"
C_YELLOW="\[\033[33m\]"
C_BLUE="\[\033[34m\]"
C_PURPLE="\[\033[35m\]"
C_CYAN="\[\033[36m\]"
C_LIGHTGRAY="\[\033[37m\]"
C_DARKGRAY="\[\033[1;30m\]"
C_LIGHTRED="\[\033[1;31m\]"
C_LIGHTGREEN="\[\033[1;32m\]"
C_LIGHTYELLOW="\[\033[1;33m\]"
C_LIGHTBLUE="\[\033[1;34m\]"
C_LIGHTPURPLE="\[\033[1;35m\]"
C_LIGHTCYAN="\[\033[1;36m\]"
C_BG_BLACK="\[\033[40m\]"
C_BG_RED="\[\033[41m\]"
C_BG_GREEN="\[\033[42m\]"
C_BG_YELLOW="\[\033[43m\]"
C_BG_BLUE="\[\033[44m\]"
C_BG_PURPLE="\[\033[45m\]"
C_BG_CYAN="\[\033[46m\]"
C_BG_LIGHTGRAY="\[\033[47m\]"

# export PS1="$C_BG_GREEN \W $C_DEFAULT $ "
# export PS1="$C_BG_GREEN \u \W $C_DEFAULT $ "
export PS1="$C_BG_GREEN \W $C_DEFAULT$C_LIGHTYELLOW\$(parse_git_branch)$C_DEFAULT $ "
