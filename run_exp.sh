#!/bin/bash

./peafowl-kvs/memcached -u root -p 3001  &> memcached.log &
pid=$!
./mutilate/mutilate --server=127.0.0.1:3001 -t 60 -K "normal:10000,1000"  -i "exponential:0.9" &> mutilate.log
kill $pid
