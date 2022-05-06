/*
 * account_data.h
 *
 * 
 */

#ifndef _account_data_H_
#define _account_data_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct account_data_t account_data_t;

#include "key_value.h"



typedef struct account_data_t {
    char *exchange_id; // string
    list_t *parameters; //nonprimitive container

} account_data_t;

account_data_t *account_data_create(
    char *exchange_id,
    list_t *parameters
);

void account_data_free(account_data_t *account_data);

account_data_t *account_data_parseFromJSON(cJSON *account_dataJSON);

cJSON *account_data_convertToJSON(account_data_t *account_data);

#endif /* _account_data_H_ */

