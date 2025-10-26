#!/bin/bash

CRYPTO_JSON_DATA=$(curl --request GET \
    --url "https://api.coinbase.com/api/v3/brokerage/market/products?product_type=SPOT&product_ids=CLANKER-USD&product_ids=BTC-USD&product_ids=BTC-EUR&product_ids=ETH-USD")

format_price() {
    local product_id=$1
    echo "$CRYPTO_JSON_DATA" | \
        jq -r ".products[] | select(.product_id==\"$product_id\") | .price" | \
        perl -pe 's/(\d)(?=(\d{3})+(\.|$))/$1_/g'
}

CLANKER_PRICE=$(format_price "CLANKER-USD")
BTC_PRICE_USD=$(format_price "BTC-USD")
BTC_PRICE_EUR=$(format_price "BTC-EUR")
ETH_PRICE=$(format_price "ETH-USD")


sketchybar --set "$NAME" label="CLNKR ${CLANKER_PRICE} ◦ BTC ${BTC_PRICE_USD} ◦ ETH ${ETH_PRICE} | "
