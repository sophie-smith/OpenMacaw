#!/bin/bash

./peafowl-kvs/memcached -u root -p 3001  &> memcached.log &
pid=$!
./mutilate/mutilate --server=127.0.0.1:3001 -t 60 -K "uniform:10000"  -i "uniform:10000" &> mutilate.log
kill $pid
