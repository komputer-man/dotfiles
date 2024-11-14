while true
do
    # Get output silently, remove unwanted lines, reformat, output to temp file
    curl -s wttr.in/Kassel?format=3 > /tmp/weather
    sleep 900
done
