#!/bin/bash

./peafowl-kvs/memcached -u root -p 3001  &> memcached.log &
pid=$!
<<<<<<< HEAD
./mutilate/mutilate --server=127.0.0.1:3001 -t 30 -T 10 -K "normal:100,10"  -i "exponential:2.0" &> mutilate.log
=======
./mutilate/mutilate --server=127.0.0.1:3001 -t 60 -T 10 -K "normal:100,10"  -i "exponential:2.0" &> mutilate.log
>>>>>>> dvfs
kill $pid
