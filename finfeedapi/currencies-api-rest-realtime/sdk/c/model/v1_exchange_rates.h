/*
 * v1_exchange_rates.h
 *
 * Represents exchange rates for a specific base asset.
 */

#ifndef _v1_exchange_rates_H_
#define _v1_exchange_rates_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_exchange_rates_t v1_exchange_rates_t;

#include "v1_exchange_rates_rate.h"



typedef struct v1_exchange_rates_t {
    char *asset_id_base; // string
    list_t *rates; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} v1_exchange_rates_t;

__attribute__((deprecated)) v1_exchange_rates_t *v1_exchange_rates_create(
    char *asset_id_base,
    list_t *rates
);

void v1_exchange_rates_free(v1_exchange_rates_t *v1_exchange_rates);

v1_exchange_rates_t *v1_exchange_rates_parseFromJSON(cJSON *v1_exchange_ratesJSON);

cJSON *v1_exchange_rates_convertToJSON(v1_exchange_rates_t *v1_exchange_rates);

#endif /* _v1_exchange_rates_H_ */

