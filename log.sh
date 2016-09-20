#!/bin/sh

x=0
while [ "$x" -lt 120 ]; do
   x=$((x+1))
   echo test log
   echo test log
   echo test log
   echo test log
   echo test log
   echo test log
   echo test log
   echo test log
   echo test log
   echo test log
   sleep 1
done

a=$?
echo "tests have done"
exit $a