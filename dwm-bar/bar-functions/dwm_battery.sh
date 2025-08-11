#!/bin/sh

# A dwm_bar function to read the battery level and status
# GNU GPLv3

dwm_battery() {
    printf "%s" "$SEP1"

    for BAT in /sys/class/power_supply/BAT*; do
        [ -d "$BAT" ] || continue  # skip if it’s not a directory

        NAME=$(basename "$BAT")
        CHARGE=$(cat "$BAT/capacity")
        STATUS=$(cat "$BAT/status")

        if [ "$IDENTIFIER" = "unicode" ]; then
            if [ "$STATUS" = "Charging" ]; then
                printf "🔌 %s: %s%% %s  " "$NAME" "$CHARGE" "$STATUS"
            else
                printf "🔋 %s: %s%% %s  " "$NAME" "$CHARGE" "$STATUS"
            fi
        else
            printf "%s %s%% %s  " "$NAME" "$CHARGE" "$STATUS"
        fi
    done

    printf "%s\n" "$SEP2"
}

dwm_battery

