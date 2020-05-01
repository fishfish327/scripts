#!/bin/bash

START_TIME=$SECONDS

/exports/projects/spark-3.0.0-preview2-bin-hadoop3.2/bin/spark-submit --class SparkSort --master yarn --deploy-mode cluster --driver-memory 4g --executor-memory 4g --executor-cores 2 --num-executors 16  SparkSort.jar hdfs://192.168.122.49:9000/home/sortData/sortInput hdfs://192.168.122.49:9000/home/sortData/SparkSort

ELAPSED_TIME=$(($SECONDS - $START_TIME))

echo " VALIDATING SPARK OUTPUT ==> 1GB ......."

/exports/projects/hadoop-3.2.1/bin/hadoop jar /exports/projects/hadoop-3.2.1/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.2.1.jar teravalidate hdfs://192.168.122.49:9000/home/sortData/SparkSort /exports/projects/report-spark

/exports/projects/hadoop-3.2.1/bin/hadoop fs -get /exports/projects/report-spark

echo -e "Time taken: $ELAPSED_TIME secs"
