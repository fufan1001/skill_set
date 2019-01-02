分隔查找
 awk -F# '{print $7}' debug.log

打印每行字段数
awk -F# '{print NF}' debug.log

打印行号
awk -F# '{print NR " : " $1 }' debug.log

自定义变量
awk -v host=$HOSTNAME 'BEGIN{print host}'

匹配与不匹配使用方法 ~和 ！~
awk -F: '$7 ~ /^\/bin/{print $7}' /etc/passwd

打印多列
awk -F: '{print $1 " : " $2}' /etc/passwd
awk -F: '{printf("%s : %s\n", $1, $2)}' /etc/passwd

判断语句
seq 10 | awk '{if($0%2==0){print "OK"}else{print "No"}}'
awk -F: '{if($NF=="/bin/bash"){print $0}}' /etc/passwd

while：
awk -F: '{i=1;while(i<=NF){printf("%d: %s ", i, $i);i++}{print " "}}' /etc/passwd

awk -F: '{for(i=1;i<=NF;i++){printf("%d:%s ", i, $i)}}{print " "}' /etc/passwd

数组：
awk -F: '{a[$NF]++}END{for(i in a){print i" : " a[i]}}' /etc/passwd

cat top_action.txt | awk 'BEGIN {sum=0; x=0; y=0; FS="\t"; OFS="\t";} {if ($1 == "chat.chat") {x = $2;} if ($1 == "chat.nonsense") {y = $2;} sum += $2} END {print sum, x, y, x * 100.0 / sum, y *100.0 / sum;}'


cat raw_10.21.9.18.log | grep 请求结束 | tail -n 200 | grep '[0-9]\{4,7\}.[0-9][0-9] ms'

/data/workspace/python3_space/offline_nlu_oss/process_normandy_daily_log
