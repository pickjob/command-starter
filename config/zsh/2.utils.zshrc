# zoxide
eval "$(zoxide init zsh)"

# vivid
LS_COLORS="$(vivid -m 8-bit generate snazzy)"
export LS_COLORS

# navi
case "$OSTYPE" in
    linux*)
        eval "$(navi widget zsh)"
        # return
    ;;
esac