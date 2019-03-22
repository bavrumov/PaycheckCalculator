#!/bin/bash
[ $# -eq 0 ] && { echo "Usage: $0 <YourAnnualSalary> <Optional:ZipCode>"; exit 1; }

if [ $# -eq 1 ]
then
	zip="10055" # Defaults to a Midtown Manhattan Zip code if missing second parameter
else
	zip=$2
fi

curl_command="curl --silent -d 'ud-current-location=ZIP|${zip}&ud-pay-fq=8&ud-it-household-income=${1}' -X POST https://smartasset.com/taxes/new-york-paycheck-calculator?render=json&"

echo "Your estimated annual take home pay after earning \$$1 in zip $zip is..."
income=$(eval $curl_command | jq '.page_data.annualizedPaycheck')
echo "($income+0.5)/1" | bc
