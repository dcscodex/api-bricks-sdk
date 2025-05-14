#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/fin_feed_api_exchange_model.h"
#include "../model/fin_feed_api_symbol_model.h"


// List of exchanges
//
list_t*
MetadataAPI_v1ExchangesGet(apiClient_t *apiClient);


// List of symbols for the exchange
//
list_t*
MetadataAPI_v1SymbolsExchangeIdGet(apiClient_t *apiClient, char *exchange_id);


