#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/v1_quote.h"
#include "../model/v1_quote_trade.h"


// Current data
//
// Get current quotes for all symbols or for a specific symbol.              :::info When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned. :::
//
list_t*
QuotesAPI_v1QuotesCurrentGet(apiClient_t *apiClient, char *filter_symbol_id);


// Latest data
//
// Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.
//
list_t*
QuotesAPI_v1QuotesLatestGet(apiClient_t *apiClient, char *filter_symbol_id, int *limit);


// Current quotes for a specific symbol
//
v1_quote_trade_t*
QuotesAPI_v1QuotesSymbolIdCurrentGet(apiClient_t *apiClient, char *symbol_id);


// Historical data
//
// Get historical quote updates within requested time range, returned in time ascending order.  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::
//
list_t*
QuotesAPI_v1QuotesSymbolIdHistoryGet(apiClient_t *apiClient, char *symbol_id, char *date, char *time_start, char *time_end, int *limit);


// Latest quote updates for a specific symbol
//
list_t*
QuotesAPI_v1QuotesSymbolIdLatestGet(apiClient_t *apiClient, char *symbol_id, int *limit);


