#!/bin/bash
echo "this is my firsy try"


# recursive output
for i in `ls /etc`; do
	echo $i
done

#打印转义
echo -e "fu\tfan"


