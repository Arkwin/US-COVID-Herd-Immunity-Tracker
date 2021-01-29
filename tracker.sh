#!/bin/bash

# pulling people recovered from https://www.worldometers.info/coronavirus/country/us/
total=$(curl -sS 'https://covid.cdc.gov/covid-data-tracker/COVIDData/getAjaxData?id=statusBar_external_data' --compressed | jq -r '.statusBar[].us_total_cases'
)

#  Deaths due to COVID
dead=$(curl -sS 'https://covid.cdc.gov/covid-data-tracker/COVIDData/getAjaxData?id=statusBar_external_data' --compressed | jq -r '.statusBar[].us_total_deaths'
)


# pull people vaccinated from  CDC
doses=$(curl -sS 'https://covid.cdc.gov/covid-data-tracker/COVIDData/getAjaxData?id=vaccination_data' --compressed | jq -r '.vaccination_data[63]' | grep "Doses_Administered" | awk '{ print $2+0 }'
)

# US Population from Census.gov
pop=$(curl -sS 'https://www.census.gov/popclock/data/population.php/us?date=20210128&_=1611954842611' --compressed | jq -r '.us.population'
)

recovered=$(($total - $dead))

# herd math percentage
herd=$(($recovered + $doses))
herd_raw=$(echo "scale=4 ; $herd / $pop" | bc)
herd_percent=$(echo "$herd_raw * 100" | bc | sed 's/..$//')

echo $herd_percent

exit 0
