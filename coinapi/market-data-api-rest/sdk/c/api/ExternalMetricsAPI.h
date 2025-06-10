#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/object.h"
#include "../model/v1_chain.h"
#include "../model/v1_external_asset.h"
#include "../model/v1_external_exchange.h"
#include "../model/v1_metric_info.h"


// Historical metrics for the asset from external sources
//
// Get asset metrics history from external data providers. Data is typically aggregated daily.
//
list_t*
ExternalMetricsAPI_v1ExternalmetricsAssetHistoryGet(apiClient_t *apiClient, char *metric_id, char *asset_id, char time_start, char time_end, char *time_format, char *period_id, int *limit);


// Listing of metrics available for specific asset
//
// Get all metrics that are actually available for the specified asset from external providers.
//
list_t*
ExternalMetricsAPI_v1ExternalmetricsAssetListingGet(apiClient_t *apiClient, char *asset_id);


// Listing of all supported external assets
//
// Get all assets (primarily stablecoins) supported by external data providers.
//
list_t*
ExternalMetricsAPI_v1ExternalmetricsAssetsGet(apiClient_t *apiClient);


// Historical metrics for the chain from external sources
//
// Get chain metrics history from external data providers. Data is typically aggregated daily.
//
list_t*
ExternalMetricsAPI_v1ExternalmetricsChainHistoryGet(apiClient_t *apiClient, char *metric_id, char *chain_id, char time_start, char time_end, char *time_format, char *period_id, int *limit);


// Listing of metrics available for specific chain
//
// Get all metrics that are actually available for the specified blockchain chain from external providers.
//
list_t*
ExternalMetricsAPI_v1ExternalmetricsChainListingGet(apiClient_t *apiClient, char *chain_id);


// Listing of all supported external chains
//
// Get all blockchain chains supported by external data providers.
//
list_t*
ExternalMetricsAPI_v1ExternalmetricsChainsGet(apiClient_t *apiClient);


// Historical metrics for the exchange from both external and internal sources
//
// Get exchange metrics history from external data providers or internal sources based on metric type.
//
list_t*
ExternalMetricsAPI_v1ExternalmetricsExchangeHistoryGet(apiClient_t *apiClient, char *metric_id, char *exchange_id, char time_start, char time_end, char *time_format, char *period_id, int *limit);


// Listing of metrics available for specific exchange (both external and generic)
//
// Get all metrics that are actually available for the specified exchange from both external providers and internal sources.
//
list_t*
ExternalMetricsAPI_v1ExternalmetricsExchangeListingGet(apiClient_t *apiClient, char *exchange_id);


// Listing of all supported external exchanges
//
// Get all exchanges that have mapping to external data providers for metrics that actually have sources.  Only returns exchanges that are properly mapped to external protocols for metrics with defined sources.
//
list_t*
ExternalMetricsAPI_v1ExternalmetricsExchangesGet(apiClient_t *apiClient);


// Listing of all supported metrics (both external and generic)
//
// Get all metrics available from external data providers and internal generic metrics.  External metrics have detailed descriptions, while generic metrics are marked as such.
//
list_t*
ExternalMetricsAPI_v1ExternalmetricsListingGet(apiClient_t *apiClient);


