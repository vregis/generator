#!/bin/sh
echo "Started..."
while (true) 
do
 php yii generator/generator
 echo ""
 sleep 10;
done;