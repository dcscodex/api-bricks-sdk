/*
 * v1_external_exchange.h
 *
 * Represents an exchange with external mapping for metrics.
 */

#ifndef _v1_external_exchange_H_
#define _v1_external_exchange_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_external_exchange_t v1_external_exchange_t;




typedef struct v1_external_exchange_t {
    char *exchange_id; // string
    char *external_name; // string
    char *description; // string
    char *source_id; // string

    int _library_owned; // Is the library responsible for freeing this object?
} v1_external_exchange_t;

__attribute__((deprecated)) v1_external_exchange_t *v1_external_exchange_create(
    char *exchange_id,
    char *external_name,
    char *description,
    char *source_id
);

void v1_external_exchange_free(v1_external_exchange_t *v1_external_exchange);

v1_external_exchange_t *v1_external_exchange_parseFromJSON(cJSON *v1_external_exchangeJSON);

cJSON *v1_external_exchange_convertToJSON(v1_external_exchange_t *v1_external_exchange);

#endif /* _v1_external_exchange_H_ */

