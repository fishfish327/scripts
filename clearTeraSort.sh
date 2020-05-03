#!/bin/bash
#alias hfs='bin/hadoop fs'
bin/hadoop fs -rm -r -skipTrash /home/sortData/sortInput
bin/hadoop fs -rm -r -skipTrash /home/partition
bin/hadoop fs -rm -r -skipTrash /home/sortData/sortOutput
