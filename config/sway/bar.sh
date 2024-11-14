while true
do
	# $(cmd) stores the output of cmd
	date=$(date +'%A, %b %d')
	#time=$(date +'%I:%M %p')
	
	temp=$(cat /tmp/weather)
	hour=$(date +'%I')
	minute=$(date +'%M')
	if [ $(date +'%H') -lt 12 ]; then
	   suffix="AM"
	else
	    suffix="PM"
	fi
	time="$hour:$minute $suffix"

	vol=$(pamixer --get-volume)
	# => Friday, Mar 05 | 03:47 PM
	echo "Vol $vol% | $temp | $date | $time "
	sleep 1
done 
