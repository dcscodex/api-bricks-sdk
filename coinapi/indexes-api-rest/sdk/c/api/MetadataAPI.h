#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/metadata_exchange.h"


// List all exchanges by exchange_id
//
list_t*
MetadataAPI_apiMetadataExchangesExchangeIdGet(apiClient_t *apiClient, char *exchange_id);


// List all exchanges
//
// Get a detailed list of exchanges provided by the system.                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::
//
list_t*
MetadataAPI_apiMetadataExchangesGet(apiClient_t *apiClient, char *filter_exchange_id);


