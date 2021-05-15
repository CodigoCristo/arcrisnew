#!/usr/bin/env bash

# git add .  
# git commit -m 'testing'
# git push -u origin main
# git push -f

    echo "" 
    op_title=" -| Language Select |- "

    ILANG=$(dialog --nocancel --backtitle "Welcome : $(date -u "+%F %H:%M")" --title "${op_title}" \
    --menu "\nInstallation wizard ArcriS\n\nSelect your install language:" 12 60 10 \
        "English" "English" \
        "Spanish" "Español" 3>&1 1>&2 2>&3)

    case "$ILANG" in
        "English") source lang/english.conf ;;
        "Spanish") source lang/español.conf ;;
    esac


dialog --backtitle "${titulo}" \
--title "${alerta}" \
--msgbox "${msg}" 13 50