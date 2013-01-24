#!/bin/bash
# Stream audio using just ssh & mpg123
# more or less the poor mans airplay ;P
# I'm sure this could be improved on.
#
# Example Use:
# ./playlist.sh /path/to/audio/files
# this came from a testing branch.
RHOST='192.168.1.121'
for track in "$1"*.mp3;
do
    ssh "$RHOST" 'mpg123 -' < "$track";
done
