#! /bin/bash

NOW=$( date '+%F_%H:%M:%S' )
HERE=$(dirname "$0")
echo "I ran at $NOW" >> $HERE/cron_log.txt