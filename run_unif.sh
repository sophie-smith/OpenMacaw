#!/bin/bash

./peafowl-kvs/memcached -u root -p 3001  &> memcached.log &
pid=$!
<<<<<<< HEAD
./mutilate/mutilate --server=127.0.0.1:3001 -t 60 -K "uniform:10000"  -i "uniform:10000" &> mutilate.log
=======
./mutilate/mutilate --server=127.0.0.1:3001 -t 60 -T 10 -K "uniform:1000"  -i "uniform:1000" &> mutilate.log
>>>>>>> dvfs
kill $pid
