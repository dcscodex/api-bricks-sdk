#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/v1_exchange_rate.h"
#include "../model/v1_exchange_rates.h"
#include "../model/v1_exchange_rates_timeseries_item.h"
#include "../model/v1_timeseries_period.h"


// Get specific rate
//
// Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::
//
v1_exchange_rate_t*
ExchangeRatesAPI_getSpecificRate(apiClient_t *apiClient, char *asset_id_base, char *asset_id_quote, char *time);


// Timeseries data
//
// Get the historical exchange rates between two assets in the form of the timeseries.
//
list_t*
ExchangeRatesAPI_v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(apiClient_t *apiClient, char *asset_id_base, char *asset_id_quote, char *period_id, char *time_start, char *time_end, int *limit);


// Get all current rates
//
// Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC); :::
//
v1_exchange_rates_t*
ExchangeRatesAPI_v1ExchangerateAssetIdBaseGet(apiClient_t *apiClient, char *asset_id_base, char *filter_asset_id, int *invert, char *time);


// Timeseries periods
//
// You can also obtain historical exchange rates of any asset pair, grouped into time periods. Get full list of supported time periods available for requesting exchange rates historical timeseries data.              ## Timeseries periods Time unit | Period identifiers --- | --- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
//
list_t*
ExchangeRatesAPI_v1ExchangerateHistoryPeriodsGet(apiClient_t *apiClient);


