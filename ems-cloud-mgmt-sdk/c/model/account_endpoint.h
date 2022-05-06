/*
 * account_endpoint.h
 *
 * 
 */

#ifndef _account_endpoint_H_
#define _account_endpoint_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct account_endpoint_t account_endpoint_t;




typedef struct account_endpoint_t {
    char *exchange_id; // string
    char *location_id; // string
    char *endpoint_schema; // string
    char *endpoint_host; // string
    char *endpoint_url; // string

} account_endpoint_t;

account_endpoint_t *account_endpoint_create(
    char *exchange_id,
    char *location_id,
    char *endpoint_schema,
    char *endpoint_host,
    char *endpoint_url
);

void account_endpoint_free(account_endpoint_t *account_endpoint);

account_endpoint_t *account_endpoint_parseFromJSON(cJSON *account_endpointJSON);

cJSON *account_endpoint_convertToJSON(account_endpoint_t *account_endpoint);

#endif /* _account_endpoint_H_ */

