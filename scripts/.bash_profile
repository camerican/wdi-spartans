# Credits:
# - Armin Ronacher Dotfiles -- https://github.com/mitsuhiko/dotfiles
# - GA WDI Installfest -- https://github.com/GA-WDI/installfest
# - Bash Ref Manual -- https://www.gnu.org/software/bash/manual/bashref.html
# - LS Colors -- http://geoff.greer.fm/lscolors/
# - Bash Colors -- https://gist.github.com/vratiu/9780109#file-bash_aliases-L51
# - Bash History -- http://jorge.fbarr.net/2011/03/24/making-your-bash-history-more-efficient/


# Colors
# ===========================================================================

# -- Add colors to ls -- #
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"

# -- Reset text -- #
RESET="\e[0m"

# -- Regular colors -- #
BLACK="\e[0;30m"
RED="\e[0;31m"
GREEN="\e[0;32m"
YELLOW="\e[0;33m"
BLUE="\e[0;34m"
PURPLE="\e[0;35m"
CYAN="\e[0;36m"
WHITE="\e[0;37m"

# -- Bold colors -- #
BBLACK="\e[1;30m"
BRED="\e[1;31m"
BGREEN="\e[1;32m"
BYELLOW="\e[1;33m"
BBLUE="\e[1;34m"
BPURPLE="\e[1;35m"
BCYAN="\e[1;36m"
BWHITE="\e[1;37m"


# History
# ===========================================================================

# -- Larger bash history (allow 32³ entries; default is 500) -- #
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE

# -- don't put duplicate lines in the history. - #
export HISTCONTROL=ignoredups

# -- ignore same sucessive entries. -- #
export HISTCONTROL=ignoreboth


# Aliases
# ===========================================================================

alias reload="clear; source ~/.bash_profile"

alias gits="git status"

alias ll="ls -la"

alias rm="rm -I --preserve-root"

# -- Confirmation -- #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# -- Parenting changing perms on / -- #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# -- By default, show slashes for directories -- #
# alias ls='gls -F'

# -- Enhanced ls, grouping directories and using colors -- #
# alias lf='gls --color -h --group-directories-first -F'

# -- Long list format including hidden files and file information -- #
# alias ll='gls --color -h --group-directories-first -Fla'

alias chrome='open -a "Google Chrome"'
alias subl='open -a "Sublime Text 3"'


##########################################################
#                                                        #
#   user  in full_path             on branch[state]      #
#   isaac in ~/Desktop/spartans    on master[!]          #
#   $                                                    #
#                                                        #
##########################################################

PS1="\n\n\[${GREEN}\]\u "           		# 2 new lines, user
PS1+="\[${RESET}\]in ${CYAN}\w"     		# in working directory
PS1+="\$(prompt_git)"               		# git information
PS1+="\n\[${BYELLOW}\]\$\[${RESET}\] "      # new line, $


# Git Details
# ===========================================================================

# Show more information regarding git status in prompt
GIT_DIFF_IN_PROMPT=true

# Long git to show (+, ?, !)
is_git_repo() {
    $(git rev-parse --is-inside-work-tree &> /dev/null)
}

is_git_dir() {
    $(git rev-parse --is-inside-git-dir 2> /dev/null)
}

get_git_branch() {
    local branch_name
    # Get the short symbolic ref
    branch_name=$(git symbolic-ref --quiet --short HEAD 2> /dev/null) ||
    # If HEAD isn't a symbolic ref, get the short SHA
    branch_name=$(git rev-parse --short HEAD 2> /dev/null) ||
    # Otherwise, just give up
    branch_name="(unknown)"
    printf $branch_name
}

# Git status information
prompt_git() {
    local git_info git_state
    if ! is_git_repo || is_git_dir; then
        return 1
    fi
    git_info=$(get_git_branch)

    if $GIT_DIFF_IN_PROMPT; then
        # -- Check for uncommitted changes in the index -- #
        if ! $(git diff --quiet --ignore-submodules --cached); then
            git_state+="${RED}+"
        fi
        # -- Check for unstaged changes -- #
        if ! $(git diff-files --quiet --ignore-submodules --); then
            git_state+="${RED}!"
        fi
        # -- Check for untracked files -- #
        if [ -n "$(git ls-files --others --exclude-standard)" ]; then
            git_state+="${RED}?"
        fi
        # -- Check for stashed files -- #
        if $(git rev-parse --verify refs/stash &>/dev/null); then
            git_state+="${RED}$"
        fi
        # -- Combine branch and state -- #
        if [[ $git_state ]]; then
            git_info="$git_info${RESET}[$git_state${RESET}]"
        fi
    fi

    printf "${RESET} on ${YELLOW}${git_info}"
}


# Ruby Version Manager
# ===========================================================================
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="${GEM_HOME}/bin:$HOME/.rvm/bin:$PATH"
