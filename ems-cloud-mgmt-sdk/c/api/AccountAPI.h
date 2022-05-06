#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/account_data.h"
#include "../model/get_account.h"


// Delete account
//
// Delete specific exchange account maintained by the EMS API for your subscription.
//
void
AccountAPI_deleteAccount(apiClient_t *apiClient, list_t * exchange_id );


// Delete all accounts
//
// Delete all exchange accounts maintained by the EMS API for your subscription.
//
void
AccountAPI_deleteAccountAll(apiClient_t *apiClient);


// Get accounts
//
// Get all accounts maintained for your subscription in the EMS API.
//
list_t*
AccountAPI_getAccount(apiClient_t *apiClient, list_t * filter_exchange_id );


// Add or update account
//
// Add new or update existing exchange account for your subscription in the EMS API.
//
void
AccountAPI_persistAccount(apiClient_t *apiClient, account_data_t * body );


