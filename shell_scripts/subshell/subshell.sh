#!/bin/bash

# subshell-test.sh



(
# Inside parentheses, and therefore a subshell . . .
while [ 1 ]   # Endless loop.
do
  echo "Subshell running . . ."
  sleep 1
done
)

(
echo "main"
while [ 1 ]   # Endless loop.
do
  echo "Hello. . ." >> x
  sleep 1
done
)


#  Script will run forever,
#+ or at least until terminated by a Ctl-C.


exit $?  # End of script (but will never get here).


