#!/bin/bash
cd hadoop-3.2.1/
bin/hadoop fs -rm -r -skipTrash /home/sortData/SparkSort
bin/hadoop fs -rm -r -skipTrash /exports/projects/report-spark
