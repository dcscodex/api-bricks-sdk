#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/object.h"
#include "../model/v1_metric_info.h"


// Historical metrics for the asset
//
// Get asset metrics history.
//
list_t*
ExternalMetricsAPI_v1ExternalmetricsAssetHistoryGet(apiClient_t *apiClient, char *metric_id, char *asset_id, char time_start, char time_end, char *time_format, char *period_id, int *limit);


// Listing of metrics available for specific asset
//
// Get all metrics that are actually available for the specified asset.
//
list_t*
ExternalMetricsAPI_v1ExternalmetricsAssetListingGet(apiClient_t *apiClient, char *asset_id);


// Historical metrics for the chain
//
// Get chain metrics history.
//
list_t*
ExternalMetricsAPI_v1ExternalmetricsChainHistoryGet(apiClient_t *apiClient, char *metric_id, char *chain_id, char time_start, char time_end, char *time_format, char *period_id, int *limit);


// Listing of metrics available for specific chain
//
// Get all metrics that are actually available for the specified blockchain chain.
//
list_t*
ExternalMetricsAPI_v1ExternalmetricsChainListingGet(apiClient_t *apiClient, char *chain_id);


// Historical metrics for the exchange
//
// Get exchange metrics history.
//
list_t*
ExternalMetricsAPI_v1ExternalmetricsExchangeHistoryGet(apiClient_t *apiClient, char *metric_id, char *exchange_id, char time_start, char time_end, char *time_format, char *period_id, int *limit);


// Listing of metrics available for specific exchange
//
// Get all metrics that are actually available for the specified exchange.
//
list_t*
ExternalMetricsAPI_v1ExternalmetricsExchangeListingGet(apiClient_t *apiClient, char *exchange_id);


// Listing of all supported metrics
//
// Get all metrics available in the system.
//
list_t*
ExternalMetricsAPI_v1ExternalmetricsListingGet(apiClient_t *apiClient);


