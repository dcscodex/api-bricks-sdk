#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/v1_trade.h"


// Latest data
//
// Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
//
list_t*
TradesAPI_v1TradesLatestGet(apiClient_t *apiClient, char *filter_symbol_id, int *include_id, int *limit);


// Historical data
//
// Get history transactions from specific symbol, returned in time ascending order.    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::
//
list_t*
TradesAPI_v1TradesSymbolIdHistoryGet(apiClient_t *apiClient, char *symbol_id, char *date, char *time_start, char *time_end, int *limit, int *include_id);


// Latest data by symbol_id
//
// Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
//
list_t*
TradesAPI_v1TradesSymbolIdLatestGet(apiClient_t *apiClient, char *symbol_id, int *limit, int *include_id);


