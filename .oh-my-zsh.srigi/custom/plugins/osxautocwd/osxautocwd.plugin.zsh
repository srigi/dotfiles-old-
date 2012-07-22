# ------------------------------------------------------------------------------
#          FILE:  osxautocwd.plugin.zsh
#        AUTHOR:  Igor Hlina (srigi@srigi.sk)
#       VERSION:  0.1
# ------------------------------------------------------------------------------


if [[ $TERM_PROGRAM == "Apple_Terminal" ]] && [[ -z "$INSIDE_EMACS" ]] {
    function chpwd {
        local SEARCH=' '
        local REPLACE='%20'
        local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
        printf '\e]7;%s\a' "$PWD_URL"
    }

    chpwd
}
