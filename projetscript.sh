#! /bin/bash

action=$(yad --width 300 --entry --title "System Logout" \
    --image=gnome-shutdown \
--center --on-top \
   --button="gtk-ok:0" --button="gtk-close:1" \
   --text "Choose action:" \
    --entry-text \
    "imem" "ipart" "ikernel" "help" "save")
ret=$?

[[ $ret -eq 1 ]] && exit 0



case $action in
    imem*)  free ;;
    ipart*) df;;
    ikernel*) 
lsb_release -a ;;
    help*) 
yad --form --width=500 --text="-s pour afficher les information en relation avec la memoire
 -ar pour afficher les information en relation avec les partitions du disque
-c pour afficher la version du noyeu linux un fichie
 -s ou -save pour sauvegarder les information les plus pertinentes en filtrant dansr " \ ;;
save*)  free| grep "Mem" >> inf.txt
;;
 
     
esac

