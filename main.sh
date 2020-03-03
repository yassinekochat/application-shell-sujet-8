#!/bin/bash
source save.sh
source imem.sh
source ipart.sh
source help.sh



opt=$1
opt1=$2

if [ $# = 2 ]; then

    case $opt in
        
        "-s")
     

	;;
       

        *) echo "invalide -h ou --help pour aider !!";;
    esac

elif [ $# = 1 ]; then

	case $opt in

	"-imem")
          imem
            ;;

	"-ipart")
           ipart
	    ;;

	"-ikernel")
	   ikernel
            ;;
	"-help")
	   help
            ;;
	"-save")
	    save 
            ;;

        
        *) echo "invalide -h ou --help pour aider !!";;
	esac
else

	    ./yad.sh
fi



