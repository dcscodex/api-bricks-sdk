#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/locations.h"


// Get site locations
//
// This endpoint providing information about the server site locations supported in the EMS API.
//
list_t*
LocationAPI_locations(apiClient_t *apiClient);


