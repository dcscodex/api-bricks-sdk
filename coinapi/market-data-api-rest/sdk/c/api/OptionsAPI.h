#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/options_option_exchange_group.h"


// Current data by Exchange
//
// Get current options data for a specific exchange.    Returns option data grouped by underlying asset, quote currency, and expiration time,  with quotes for both calls and puts at each strike price.
//
list_t*
OptionsAPI_v1OptionsExchangeIdCurrentGet(apiClient_t *apiClient, char *exchange_id);


