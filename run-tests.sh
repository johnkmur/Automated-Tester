#!/usr/bin/env bash

echo "Hello, I am your script running."
echo "Number of arguments I received: $#"
echo "Argument[0] (the program being run): $0"
echo "Argument[1]: $1" # This is empty if no arguments were passed
echo "Argument[2]: $2" # This is empty if only one argument was passed
# Notice what directory this script is executed from. This is important
# when you try to call your helper script
echo "$(pwd)"
sleep 10s && echo "It is annoying to wait for long commands to finish"
sleep 10s & echo "We can put them in background them however so we don't have to wait"
notify-send "Test Message" "Blocking part of the script finished"
echo "Notice that the second sleep is still running, we can tell by: $(pidof sleep)"

# Last modified 2:00 PM
