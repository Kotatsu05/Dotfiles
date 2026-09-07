#! /bin/sh

echo $(free -h | awk '/Mem:/ {printf("%s/%s", $3, $2)}')
