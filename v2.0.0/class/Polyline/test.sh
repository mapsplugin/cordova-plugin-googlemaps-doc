#!/bin/bash

FILES=$(cat README.md|grep "<a href=.*/README.md"|perl -pe "s@^[^/]+/([^/]+).*@\$1@g")
for line in $FILES
do
  echo $line
  mkdir $line
  touch $line/README.md
  echo "# marker.${line}()" > $line/README.md
done

for line in $(cat README.md|grep "<td>"|perl -pe "s@^.*<td>(.+)</td>@\$1@g"|perl -pe "s@<.*?>(.*?)</.*?>@\`\$1\` @g")do
do
  filename=$(shift $FILES)
  echo $filename
  echo "    $line"
done
