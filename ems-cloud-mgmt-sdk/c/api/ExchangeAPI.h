#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/exchange_login_require.h"


// Get exchange configuration
//
// Get information about the required parameters or server site location of the exchanges supported in the EMS API.
//
list_t*
ExchangeAPI_exchangeLoginRequire(apiClient_t *apiClient);


