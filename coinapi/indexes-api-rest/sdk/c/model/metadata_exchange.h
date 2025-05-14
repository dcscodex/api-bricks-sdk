/*
 * metadata_exchange.h
 *
 * Represents an exchange.
 */

#ifndef _metadata_exchange_H_
#define _metadata_exchange_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct metadata_exchange_t metadata_exchange_t;




typedef struct metadata_exchange_t {
    char *exchange_id; // string
    char *website; // string
    char *name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} metadata_exchange_t;

__attribute__((deprecated)) metadata_exchange_t *metadata_exchange_create(
    char *exchange_id,
    char *website,
    char *name
);

void metadata_exchange_free(metadata_exchange_t *metadata_exchange);

metadata_exchange_t *metadata_exchange_parseFromJSON(cJSON *metadata_exchangeJSON);

cJSON *metadata_exchange_convertToJSON(metadata_exchange_t *metadata_exchange);

#endif /* _metadata_exchange_H_ */

