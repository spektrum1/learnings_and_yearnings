#! /bin/bash

scripts=("$@")

for i in "${scripts[@]}"
do
   echo "#! /bin/bash" > "$i.sh"
   chmod +x $i.sh
done

