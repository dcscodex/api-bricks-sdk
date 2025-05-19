/*
 * v1_exchange_rates_rate.h
 *
 * Represents an exchange rate within a collection of exchange rates.
 */

#ifndef _v1_exchange_rates_rate_H_
#define _v1_exchange_rates_rate_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_exchange_rates_rate_t v1_exchange_rates_rate_t;




typedef struct v1_exchange_rates_rate_t {
    char *time; //date time
    char *asset_id_quote; // string
    double rate; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} v1_exchange_rates_rate_t;

__attribute__((deprecated)) v1_exchange_rates_rate_t *v1_exchange_rates_rate_create(
    char *time,
    char *asset_id_quote,
    double rate
);

void v1_exchange_rates_rate_free(v1_exchange_rates_rate_t *v1_exchange_rates_rate);

v1_exchange_rates_rate_t *v1_exchange_rates_rate_parseFromJSON(cJSON *v1_exchange_rates_rateJSON);

cJSON *v1_exchange_rates_rate_convertToJSON(v1_exchange_rates_rate_t *v1_exchange_rates_rate);

#endif /* _v1_exchange_rates_rate_H_ */

