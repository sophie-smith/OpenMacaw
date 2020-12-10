#!/bin/bash

./peafowl-kvs/memcached -u root -p 3001  &> memcached.log &
pid=$!
./mutilate/mutilate --server=127.0.0.1:3001 -T 10 -t 60 -K "gev:30.7984,8.20449,0.078688" -i "pareto:0.0,16.0292,0.154971" &> mutilate.log
kill $pid
