#!/bin/bash
usage() {
    echo -e "Usage: $0 <BARNAME> <BARNAME>"
    exit 1
}

if [ "$#" -eq 0 ]; then
    usage
fi

# Terminate already running bar instances
killall -q polybar

# Load font icon aliases.
source ~/.config/fonts/i_all.sh

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
# Launch bars
for i in $@; do
    polybar $i &
done

echo "Bars launched..."
