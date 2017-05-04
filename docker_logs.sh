#!/usr/bin/env bash
# show docker logs

if [ -z $1 ]; then
  echo Usage: ./show-logs [service]
  exit 1
fi

while true; do
  docker logs --tail=50 -f $1
  echo --------
  echo $1: lost logs, waiting 5 seconds \($(date -u)\)
  echo --------
  sleep 5
done