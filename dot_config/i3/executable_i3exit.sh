#!/bin/sh


case "$1" in
    lock)
        betterlockscreen -l dimblur -- --time-str="%H:%M"
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        systemctl suspend
        ;;
    hibernate)
        systemctl hibernate
        ;;
    reboot)
        reboot now
        ;;
    shutdown)
        shutdown now
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
