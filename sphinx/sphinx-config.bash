#!/bin/bash

WORKDIR=`dirname $0`
CONFDIR="$WORKDIR/conf.d/"

LINE=$(seq -s "#" 70 | sed 's/[0-9]//g')

if [ ! -d "$CONFDIR" ]; then
  echo "# Path '$CONFDIR' is incorrect."
  exit 1
fi

for file in "${CONFDIR%?}"/*
do
  if [[ -f $file ]]; then
    FILENAME=$(basename "$file")

    echo -e "${LINE}\n# Include file ${FILENAME}\n${LINE}\n"
    cat "$file"
  fi
done
