#!/bin/sh

# start mongod with pm2
pm2 start mongod

# start redis-server with pm2
pm2 start redis-server

echo You did it!

