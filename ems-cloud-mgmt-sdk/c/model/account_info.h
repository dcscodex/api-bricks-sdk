/*
 * account_info.h
 *
 * 
 */

#ifndef _account_info_H_
#define _account_info_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct account_info_t account_info_t;




typedef struct account_info_t {
    char *exchange_id; // string

} account_info_t;

account_info_t *account_info_create(
    char *exchange_id
);

void account_info_free(account_info_t *account_info);

account_info_t *account_info_parseFromJSON(cJSON *account_infoJSON);

cJSON *account_info_convertToJSON(account_info_t *account_info);

#endif /* _account_info_H_ */

