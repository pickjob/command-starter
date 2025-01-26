# 
# 系统选项配置
# 
# PROMPT
setopt PROMPT_SUBST
# 两个单引号代表一个单引号
setopt RC_QUOTES
# DIRECTORY
setopt EXTENDED_GLOB
setopt AUTO_CD CD_SILENT
setopt AUTO_PUSHD PUSHD_SILENT PUSHD_IGNORE_DUPS
# ZLE
setopt NOBEEP VI
setopt BAD_PATTERN NOMATCH
setopt CORRECT CORRECT_ALL
# COMPLETION
setopt AUTO_MENU ALWAYS_TO_END AUTO_PARAM_SLASH COMPLETE_IN_WORD GLOB_COMPLETE
# HISTORY
setopt NOHIST_BEEP BANG_HIST
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY APPEND_HISTORY SHARE_HISTORY
setopt HIST_IGNORE_DUPS HIST_IGNORE_ALL_DUPS HIST_SAVE_NO_DUPS HIST_NO_STORE
setopt HIST_EXPIRE_DUPS_FIRST HIST_IGNORE_SPACE HIST_FIND_NO_DUPS
setopt HIST_VERIFY
# IO
setopt CLOBBER MULTIOS
# JOB
setopt AUTO_CONTINUE NOBG_NICE NOHUP NONOTIFY NOMONITOR

# 
# :completion:<function>:<completer>:<command>:<argument>:<tag>
# 
zstyle ':completion:*' verbose yes
# cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ${ZSH_CACHE}/zsh_cache_${USERNAME}
# no old completion
zstyle ':completion:*' use-compctl false
# completer
zstyle ':completion:*' menu select
zstyle ':completion:*' completer _extensions _complete _correct _approximate
zstyle ':completion:*:approximate:::' max-errors 1
# group
zstyle ':completion:*' group-name ''
# color
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# history
HISTSIZE=99999
SAVEHIST=99999
HISTFILE=${ZSH_CACHE}/zsh_history_${USERNAME}

typeset -U PATH path
case "$OSTYPE" in
    linux*)
        # bin
        path+=($REPOSITORY/bin)
        # npm
        path+=($NPM_HOME/bin)
        # return
    ;;
esac
export PATH

# 
# 加载其他zshrc
# 
for ZSH_FILE in ${ZDOTDIR}/*.zshrc(.onN); do
    source "${ZSH_FILE}"
done