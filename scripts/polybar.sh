#!/usr/bin/env dash

# Kill polybar
pkill -x polybar

# Wait for it to shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar
polybar top &
polybar bottom &

echo "Bar launched..."
