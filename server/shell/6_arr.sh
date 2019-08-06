#!/bin/bash

normandy=(
10.23.ww
10.24.q
10.25.r
10.26.t
10.27.3
)

echo ${normandy[0]}
echo ${normandy[3]}

echo ${normandy[@]}

for i in normandy;do
	echo $i
done

echo ${#normandy[0]}
echo ${#normandy[@]}

