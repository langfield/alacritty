#!/usr/bin/env bash
rm -f /tmp/hello_there
sleep 2 && xdotool type --delay 60 "from pathlib import Path; Path('/tmp/hello_there').write_text('" &&
xdotool type --delay 1 hello there! &&
xdotool type --delay 60 "')" &&
xdotool key --delay 20 Return &&
xdotool key --delay 60 Return ctrl+d &
python3
str="hello there!"
if [[ $(< /tmp/hello_there) != "$str" ]]; then
      exit 1
fi
exit 0
