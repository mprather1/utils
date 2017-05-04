#!/usr/bin/env bash
# deletes all but the 5 newest files in a directory

zipfiles=$(find . -type f -name '*.zip' | xargs ls -t | head -n -5)

rm -v $zipfiles
