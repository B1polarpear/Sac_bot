#!/bin/bash

# Load file into array.
mapfile -t myarray < lastKill.txt

echo "INSERT INTO mud_kills (mob, killtime, exp, leader) VALUES (\"${myarray[0]}\", ${myarray[1]}, ${myarray[2]}, '${myarray[3]}');" >> mud.sql
rm lastKill.txt
sh doSql
