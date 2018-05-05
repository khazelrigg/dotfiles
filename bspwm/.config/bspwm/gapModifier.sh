#!/bin/bash

GAPSIZE=$(bspc config window_gap)

#!/bin/bash
echo $1

if [ $1 == 'e' ]
then
        GAPSIZE=$(($GAPSIZE + 5))
else
        GAPSIZE=$(($GAPSIZE - 5))
fi
echo $GAPSIZE
bspc config window_gap $GAPSIZE
