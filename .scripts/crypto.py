#!/usr/bin/env python3
import json
import urllib.request

CURRENCY = "USD"
with urllib.request.urlopen("https://blockchain.info/ticker") as url:
    data = json.loads(url.read().decode())
    print(data[CURRENCY]['last'])

