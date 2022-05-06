#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/account_endpoint.h"


// Get API endpoints
//
// Get all API endpoints that the EMS API expose for your subscription.
//
list_t*
EndpointsAPI_endpoints(apiClient_t *apiClient, list_t * filter_exchange_id );


