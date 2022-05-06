/*
 * get_account.h
 *
 * 
 */

#ifndef _get_account_H_
#define _get_account_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct get_account_t get_account_t;

#include "key_value.h"



typedef struct get_account_t {
    char *exchange_id; // string
    list_t *parameters; //nonprimitive container

} get_account_t;

get_account_t *get_account_create(
    char *exchange_id,
    list_t *parameters
);

void get_account_free(get_account_t *get_account);

get_account_t *get_account_parseFromJSON(cJSON *get_accountJSON);

cJSON *get_account_convertToJSON(get_account_t *get_account);

#endif /* _get_account_H_ */

