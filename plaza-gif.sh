#!/bin/bash
COUNTER=2
while true
        do
                echo https://plaza.one/img/backs/0$COUNTER.gif
		if [ $COUNTER -lt 10 ]; then
		  	curl https://plaza.one/img/backs/0$COUNTER.gif >> $COUNTER.gif
		else
			curl https://plaza.one/img/backs/$COUNTER.gif >> $COUNTER.gif
		fi
		if [  $(grep "html" "$COUNTER.gif" | wc -l) -gt 0 ]; then
			echo "All gifs downloaded."
			rm -rf "$COUNTER.gif"
			exit
		fi
		let COUNTER=COUNTER+1
        done