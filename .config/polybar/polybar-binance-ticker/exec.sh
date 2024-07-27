#!/bin/bash

COINS_SVG=~/.config/polybar/polybar-binance-ticker/coins.svg

for i in "$@"
do
case $i in 
  --base-coin=*)
    BASE_CURRENCY="${i#*=}"
    shift
    ;;
  *) 
    COIN=$1
    ICON=$(cat $COINS_SVG | grep -i $COIN | head -n 1 | cut -d: -f1)
    PRICE=$(curl -s https://api.binance.com/api/v1/ticker/price?symbol=$COIN$BASE_CURRENCY | grep -oE '[0-9]*\.[0-9]*' | awk '{printf("%.2f\n", $COIN)}')
    echo -ne '\u'"$ICON" $PRICE " "
    shift
    ;;
esac
done

