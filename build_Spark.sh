#!/bin/bash
rm *.class
javac -classpath /exports/projects/spark-3.0.0-preview2-bin-hadoop3.2/jars/spark-core_2.12-3.0.0-preview2.jar:/exports/projects/spark-3.0.0-preview2-bin-hadoop3.2/jars/spark-sql_2.12-3.0.0-preview2.jar:/exports/projects/spark-3.0.0-preview2-bin-hadoop3.2/jars/scala-compiler-2.12.10.jar:/exports/projects/spark-3.0.0-preview2-bin-hadoop3.2/jars/scala-library-2.12.10.jar SparkSort.java

jar cvf SparkSort.jar *.class
