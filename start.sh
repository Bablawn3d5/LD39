#!/bin/bash
if [ -e /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome ]; then
  /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --allow-file-access-from-files "index.html" 2> /dev/null
elif [ `which python` ]; then
  echo "Started server on port 8080"
  python -m SimpleHTTPServer 8080 index.html
fi
