~/bd/hadoop/bin/hadoop jar ~/bd/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.9.2.jar grep ~/python/scraping/detik/berita output '[a-z]w+'

~/bd/hadoop/bin/hdfs dfs -mkdir /user
~/bd/hadoop/bin/hdfs dfs -mkdir /user/namamu

~/bd/hadoop/bin/hdfs dfs -put ~/python/scraping/detik/berita/berita input

~/bd/hadoop/bin/hadoop jar ~/bd/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.9.2.jar grep input output '[a-z]\w+'

~/bd/hadoop/bin/hdfs dfs -get output output
cat output/*

~/bd/hadoop/bin/hdfs dfs -cat output/*

~/bd/hadoop/bin/hdfs dfs -rm -R input

~/bd/hadoop/bin/hadoop jar ~/bd/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.9.2.jar -mapper ~/python/mapreduce/mapper.py -reducer ~/python/mapreduce/python/reducer.py -input /user/wirarama/input -output /user/wirarama/python-output


