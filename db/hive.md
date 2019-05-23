hive -e set mapreduce.job.queuename=root.**.**;

hive -e 'select * ....' > file.txt;
