#!/bin/bash

for f in "$@"
do
    if [ ! -f $f ]
    then
      echo $f does not exist!
      continue
    fi
    echo "Converting $f.";
    newFile=$(expand -t 4 "$f");
    echo "$newFile" > "$f";
done
