#!/bin/bash
 
while :
do
	ps --no-headers -C sort -o %cpu >> cpu.txt
	pidstat -dl -C sort >> io.txt
	ps --no-headers aux -y | grep sort | awk '{print $2,$3,$6}' >> memory.txt
	sleep 10
done

