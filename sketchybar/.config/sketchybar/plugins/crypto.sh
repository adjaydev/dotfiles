CLANKER_PRICE=$(curl --request GET \
  --url 'https://api.coinbase.com/api/v3/brokerage/market/products?product_type=SPOT&contract_expiry_type=UNKNOWN_CONTRACT_EXPIRY_TYPE&expiring_contract_status=UNKNOWN_EXPIRING_CONTRACT_STATUS&products_sort_order=PRODUCTS_SORT_ORDER_UNDEFINED&product_ids=CLANKER-USD' | \
	jq -r '.products[0].price' | \
  perl -pe 's/(\d)(?=(\d{3})+(\.|$))/$1_/g')

BTC_PRICE=$(curl --request GET \
  --url 'https://api.coinbase.com/api/v3/brokerage/market/products?product_type=SPOT&contract_expiry_type=UNKNOWN_CONTRACT_EXPIRY_TYPE&expiring_contract_status=UNKNOWN_EXPIRING_CONTRACT_STATUS&products_sort_order=PRODUCTS_SORT_ORDER_UNDEFINED&product_ids=BTC-USD' | \
  jq -r '.products[0].price' | \
  perl -pe 's/(\d)(?=(\d{3})+(\.|$))/$1_/g')

ETH_PRICE=$(curl --request GET \
  --url 'https://api.coinbase.com/api/v3/brokerage/market/products?product_type=SPOT&contract_expiry_type=UNKNOWN_CONTRACT_EXPIRY_TYPE&expiring_contract_status=UNKNOWN_EXPIRING_CONTRACT_STATUS&products_sort_order=PRODUCTS_SORT_ORDER_UNDEFINED&product_ids=ETH-USD' | \
  jq -r '.products[0].price' | \
  perl -pe 's/(\d)(?=(\d{3})+(\.|$))/$1_/g')

sketchybar --set "$NAME" label="CLNKR $CLANKER_PRICE ◦ BTC◦$BTC_PRICE ◦ ETH $ETH_PRICE | "

