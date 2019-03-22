# PaycheckCalculator
<br>

### Requires jq:
<br>
https://stedolan.github.io/jq/<br>
Use Homebrew to install jq with `brew install jq`

## Usage<br>
`sh Paycheck.sh <Annual Salary> <Optional:ZipCode>`<br><br>
If no zip code is provided, the script will default to one in midtown NYC

## How it works:<br>
https://smartasset.com/taxes/new-york-paycheck-calculator<br>
Brings estimates from this site to a command line near you.

## Changelog:<br>
v1.1 rounds your estimated take home pay to the nearest dollar.<br>
v1.2 overwrites your clipboard with the rounded dollar estimate.<br>
