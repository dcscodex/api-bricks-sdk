#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/balance.h"


// Get balances
//
// Returns all of your balances, including available balance.
//
list_t*
BalancesAPI_v1BalancesGet(apiClient_t *apiClient, char * exchange_id );


