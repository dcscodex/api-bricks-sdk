#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/v1_order_book_base.h"


// Current order books
//
list_t*
OrderBookL3API_v1Orderbooks3CurrentGet(apiClient_t *apiClient, char *filter_symbol_id, int *limit_levels);


// Current order book by symbol_id
//
// Retrieves the current order book for the specified symbol.
//
v1_order_book_base_t*
OrderBookL3API_v1Orderbooks3SymbolIdCurrentGet(apiClient_t *apiClient, char *symbol_id, int *limit_levels);


