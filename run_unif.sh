#!/bin/bash

./peafowl-kvs/memcached -u root -p 3001  &> memcached.log &
pid=$!
./mutilate/mutilate --server=127.0.0.1:3001 -t 60 -T 10 -K "uniform:1000"  -i "uniform:1000" &> mutilate.log
kill $pid
