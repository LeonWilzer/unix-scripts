#!/bin/bash
circuitx=1200
circuity=45
omnix=355
namey=615
option1y=755
option2y=795
option3y=835
option4y=875
submity=995
sitedelay=7

#Renew TOR-Circuit
echo "mousemove $circuitx $circuity" | xte
echo "mouseclick 1" | xte
sleep 0.1s
echo "key Return" | xte
sleep 0.1s

# Return to poll
echo "mousemove $omnix $circuity" | xte
echo "mouseclick 1" | xte
echo "str https://docs.google.com/forms/d/19IOZw7mJjwBIEmzwotFpdO9QzMrt0Brw5JqOk0csFHo" | xte
echo "key Return" | xte
sleep $sitedelay

# Name input
echo "mousemove $omnix $namey" | xte
echo "mouseclick 1" | xte
echo "str $1" | xte
sleep 0.1s

# Motto choice
case $(( RANDOM % 4 + 0 )) in

	0)
		echo "mousemove $omnix $option1y" | xte
		echo "$(date) - $1 : 1" >> /log/poll
		;;
	1)
		echo "mousemove $omnix $option2y" | xte
		echo "$(date) - $1 : 2" >> /log/poll
		;;
	2)
		echo "mousemove $omnix $option3y" | xte
		echo "$(date) - $1 : 3" >> /log/poll
		;;
	3)
		echo "mousemove $omnix $option4y" | xte
		echo "$(date) - $1 : 4" >> /log/poll
		;;
	*)
		echo "encountered strange number"
		echo "$(date) - $1 : null" >> /log/poll
		;;
esac
echo "mouseclick 1" | xte

# Submitting results
sleep 0.5s
echo "mousemove $omnix $submity" | xte
echo "mouseclick 1" | xte
sleep 1s

