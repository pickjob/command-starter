# fast-syntax-highlighting
FAST_WORK_DIR=${ZSH_CACHE}

# zoxide
_ZO_DATA_DIR=$REPOSITORY
export _ZO_DATA_DIR
_ZO_ECHO=1
export _ZO_ECHO

# lsd
alias l="lsd --long"
alias ls="lsd --long"
alias ll="lsd --long --total-size --tree"

# fzf
FZF_DEFAULT_COMMAND='fd --type f'
export FZF_DEFAULT_COMMAND
FZF_DEFAULT_OPTS='--height=60% --layout=reverse --border=bold --info=inline:👈 --pointer=👉 --marker=🫰 --cycle'
export FZF_DEFAULT_OPTS

# bat
BAT_CONFIG_PATH=$REPOSITORY/bat.conf
export BAT_CONFIG_PATH

# navi
NAVI_PATH=$REPOSITORY/cheatsheet
export NAVI_PATH
NAVI_CONFIG=$REPOSITORY/navi.yaml
export NAVI_CONFIG