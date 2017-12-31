#!/bin/bash

#  openweathermap.sh
#
#  This script checks the openweathermap api and print it to polybar using weather-icons.
#  See also https://github.com/jaagr/polybar/wiki/Module:-script

get_icon() {

    case $1 in
        01d) icon="";;
        01n) icon="";;
        02d) icon="";;
        02n) icon="";;
        03*) icon="";;
        04*) icon="";;
        09d) icon="";;
        09n) icon="";;
        10d) icon="";;
        10n) icon="";;
        11d) icon="";;
        11n*) icon="";;
        13d) icon="";;
        13n) icon="";;
        50d) icon="";;
        50n) icon="";;
        *) icon="";
    esac

    echo $icon

}


key=""
city=""
units="metric"
symbol="°"
language=""


current=$(curl -sf "http://api.openweathermap.org/data/2.5/weather?APPID=$key&id=$city&units=$units&lang=$language")
current_temp=$(echo "$current" | jq ".main.temp" | cut -d "." -f 1)
current_icon=$(echo "$current" | jq -r ".weather[].icon")

forecast=$(curl -sf "http://api.openweathermap.org/data/2.5/forecast?APPID=$key&id=$city&units=$units&lang=$language&cnt=1")
forecast_temp=$(echo "$forecast" | jq ".list[].main.temp" | cut -d "." -f 1)
forecast_icon=$(echo "$forecast" | jq -r ".list[].weather[].icon")

echo "$(get_icon "$current_icon") $current_temp$symbol    $(get_icon "$forecast_icon") $forecast_temp$symbol"
