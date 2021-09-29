#! /bin/bash

start () {
    HERE=$(dirname "$0")
    SIZE=$(wc -c $HERE/cron_log.txt | awk '{print $1}')
    [ $SIZE -gt 900 ] && run_rotation || echo "Log too small for rotation" 
}

run_rotation () {
    ARCHIVE_SIZE=$(find $HERE -maxdepth 1 -name "cl_archive*" | wc -l | xargs)
    [ $ARCHIVE_SIZE -eq 3 ] && zip_archive
    cp $HERE/cron_log.txt $HERE/cl_archive$ARCHIVE_SIZE.txt
    #echo "" > $HERE/cron_log.txt
}

zip_archive () {
    i=$(( $ARCHIVE_SIZE-1 ))
    until [ $i -lt 0 ]
        do
            zip $HERE/log_archive.zip $HERE/cl_archive$i.txt
            rm $HERE/cl_archive$i.txt
            i=$(( $i-1 ))
        done
    ARCHIVE_SIZE=0
}

start


