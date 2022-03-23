#circuitx=500
feedy=300
omnix=500
namey=175
maily=210
#option1y=755
#option2y=795
#option3y=835
#option4y=875
submitx=600
submity=345
sitedelay=3

#Renew TOR-Circuit
#echo "mousemove $circuitx $circuity" | xte
#echo "mouseclick 1" | xte
#sleep 0.1s
#echo "key Return" | xte
#sleep 0.1s

#sleep $sitedelay
# Return to poll
xte "mousemove $omnix $namey"
xte "mouseclick 1"
xte "str Anon"
#sleep $sitedelay

xte "mousemove $omnix $maily"
xte "mouseclick 1"
xte "str anon@anon"
#sleep $sitedelay

xte "mousemove $omnix $feedy"
xte "mouseclick 1"
for i in {0..16}
do
	xte "str $(xxd -l 55555 -c 55555 -p < /dev/random)"
done
#sleep $sitedelay
#xte 'key F5'
#sleep $sitedelay
#xte 'key Return'
#sleep $sitedelay
xte "mousemove $submitx $submity"
xte "mouseclick 1"

sleep $sitedelay

# Name input
#echo "mousemove $omnix $namey" | xte
#echo "mouseclick 1" | xte
#echo "str $1" | xte
#sleep 0.1s

# Motto choice
#case $(( RANDOM % 4 + 0 )) in

#	0)
#		echo "mousemove $omnix $option1y" | xte
#		echo "$(date) - $1 : 1" >> /log/poll
#		;;
#	1)
#		echo "mousemove $omnix $option2y" | xte
#		echo "$(date) - $1 : 2" >> /log/poll
#		;;
#	2)
#		echo "mousemove $omnix $option3y" | xte
#		echo "$(date) - $1 : 3" >> /log/poll
#		;;
#	3)
#		echo "mousemove $omnix $option4y" | xte
#		echo "$(date) - $1 : 4" >> /log/poll
#		;;
#	*)
#		echo "encountered strange number"
#		echo "$(date) - $1 : null" >> /log/poll
#		;;
#esac
#echo "mouseclick 1" | xte

# Submitting results
#sleep 0.5s
#echo "mousemove $omnix $submity" | xte
#echo "mouseclick 1" | xte
#sleep 1s

