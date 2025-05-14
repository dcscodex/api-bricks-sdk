#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/v1_exchange_rate.h"
#include "../model/v1_exchange_rates.h"


// Get specific rate
//
// Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::
//
v1_exchange_rate_t*
ExchangeRatesAPI_getSpecificRate(apiClient_t *apiClient, char *asset_id_base, char *asset_id_quote);


// Get all current rates
//
// Get the current exchange rate between requested asset and all other assets.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::                :::info  You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);  :::
//
v1_exchange_rates_t*
ExchangeRatesAPI_v1ExchangerateAssetIdBaseGet(apiClient_t *apiClient, char *asset_id_base, char *filter_asset_id, int *invert);


