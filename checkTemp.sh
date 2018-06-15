#!/bin/bash
clear
# Little Loop to check temperature

for f in {1..10}
    do
        # vcgencmd measure_temp
        sensors | egrep "CPU"
        sysbench --test=cpu --cpu-max-prime=20000 --num-threads=4 run >/dev/null 2>&1
    done
# vcgencmd measure_temp
sensors | egrep "CPU"
