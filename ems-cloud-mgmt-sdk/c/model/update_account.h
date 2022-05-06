/*
 * update_account.h
 *
 * 
 */

#ifndef _update_account_H_
#define _update_account_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct update_account_t update_account_t;

#include "key_value.h"



typedef struct update_account_t {
    char *exchange_id; // string
    list_t *parameters; //nonprimitive container

} update_account_t;

update_account_t *update_account_create(
    char *exchange_id,
    list_t *parameters
);

void update_account_free(update_account_t *update_account);

update_account_t *update_account_parseFromJSON(cJSON *update_accountJSON);

cJSON *update_account_convertToJSON(update_account_t *update_account);

#endif /* _update_account_H_ */

