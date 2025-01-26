# 
# github url 自动 clone
# 
_accept_line() {
    case "${BUFFER}" in
        https://github.com/*)
            BUFFER="git clone ${BUFFER}"
        ;;
        git@github.com:*)
            BUFFER="git clone ${BUFFER}"
        ;;
        *)
        ;;
    esac
    zle .accept-line
}
zle -N accept-line _accept_line

# 目录变换自动 lsd
function chpwd_lsd() {
    if [[ -o interactive ]]; then
        emulate -L zsh
        lsd --long
    fi
}

if ! (( ${chpwd_functions[(I)chpwd_lsd]} )); then
    chpwd_functions+=(chpwd_lsd)
fi