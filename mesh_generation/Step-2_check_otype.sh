
#!/bin/bash

mkdir o-mesh_raw

#FILES=$(find /home/liwei/Simulations/thuerey_research/data/database/airfoil_database/ -type f -newermt '2018-01-17' ! -newermt '2018-01-18')
#FILES=$(find /home/liwei/Simulations/thuerey_research/data/database/airfoil_database/ -type f )
FILES=$(ls *.nmf )


i=0
for file in $FILES; do
    var="$(grep -c FARFIELD "${file}")"
#var="$(grep '<td><a href="http://www.blabla.cc' file.txt)"
#i=$((i+1))
if [[ $var -lt 3 ]]
then
    echo "${file//.nmf}"
    mv ${file//.nmf}*.* o-mesh_raw
fi
done 
#echo $FILES{53}
