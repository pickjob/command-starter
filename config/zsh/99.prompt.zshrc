function check_os() {
    case "$OSTYPE" in
        msys*)
            echo ""
            ;;
        linux*)
            echo ""
            ;;
    esac
}

PROMPT="%F{red}%B%n%b@%B%M%b%f %B🫵%b%f "
RPROMPT="%F{cyan}%1~%f %F{blue}%B%*%b%f %B$(check_os)%b"