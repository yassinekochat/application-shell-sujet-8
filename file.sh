zenity --info --ttle="INFORMATION DE LA MERMOIRE" --text="CLick on process to continue" --ok-label="Proces" 
 ps -aeF |  sort -k 4 | awk '{print $2 " " $3 }' | tail -10 >info.txt

output=graph.plt
data=info.txt 

gnuplot --persist -e "datafiles='${date}'; outputname='${output}'" graph.plt
