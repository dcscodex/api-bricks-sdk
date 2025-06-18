#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/v1_general_data.h"
#include "../model/v1_listing_item.h"
#include "../model/v1_metric.h"
#include "../model/v1_metric_data.h"


// Current metrics for given asset
//
// Get current asset metrics.
//
list_t*
MetricsV1API_v1MetricsAssetCurrentGet(apiClient_t *apiClient, char *metric_id, char *asset_id, char *asset_id_external, char *exchange_id);


// Historical metrics for asset
//
// Get asset metrics history.
//
list_t*
MetricsV1API_v1MetricsAssetHistoryGet(apiClient_t *apiClient, char *metric_id, char *exchange_id, char *asset_id, char *asset_id_external, char time_start, char time_end, char *time_format, char *period_id, int *limit);


// Listing of all supported metrics for asset
//
// Get data metrics for asset.
//
list_t*
MetricsV1API_v1MetricsAssetListingGet(apiClient_t *apiClient, char *metric_id, char *exchange_id, char *chain_id, char *network_id, char *asset_id, char *asset_id_external);


// Current metrics for given exchange
//
// Get current exchange metrics values.
//
list_t*
MetricsV1API_v1MetricsExchangeCurrentGet(apiClient_t *apiClient, char *exchange_id, char *metric_id);


// Historical metrics for the exchange
//
// Get exchange metrics history.
//
list_t*
MetricsV1API_v1MetricsExchangeHistoryGet(apiClient_t *apiClient, char *metric_id, char *exchange_id, char time_start, char time_end, char *time_format, char *period_id, int *limit);


// Listing of all supported exchange metrics
//
// Get data metrics for exchange.
//
list_t*
MetricsV1API_v1MetricsExchangeListingGet(apiClient_t *apiClient, char *exchange_id, char *metric_id);


// Listing of all supported metrics by CoinAPI
//
// Get all data metrics.
//
list_t*
MetricsV1API_v1MetricsListingGet(apiClient_t *apiClient);


// Current metrics for given symbol
//
// Get current symbol metrics.
//
list_t*
MetricsV1API_v1MetricsSymbolCurrentGet(apiClient_t *apiClient, char *metric_id, char *symbol_id, char *exchange_id);


// Historical metrics for symbol
//
// Get symbol metrics history.
//
list_t*
MetricsV1API_v1MetricsSymbolHistoryGet(apiClient_t *apiClient, char *metric_id, char *symbol_id, char time_start, char time_end, char *time_format, char *period_id, int *limit);


// Listing of all supported metrics for symbol
//
// Get data metrics for symbol.
//
list_t*
MetricsV1API_v1MetricsSymbolListingGet(apiClient_t *apiClient, char *metric_id, char *exchange_id, char *symbol_id);


