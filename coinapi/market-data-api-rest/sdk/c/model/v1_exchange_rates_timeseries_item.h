/*
 * v1_exchange_rates_timeseries_item.h
 *
 * Represents an item in the exchange rate timeseries.
 */

#ifndef _v1_exchange_rates_timeseries_item_H_
#define _v1_exchange_rates_timeseries_item_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_exchange_rates_timeseries_item_t v1_exchange_rates_timeseries_item_t;




typedef struct v1_exchange_rates_timeseries_item_t {
    char *time_period_start; //date time
    char *time_period_end; //date time
    char *time_open; //date time
    char *time_close; //date time
    double rate_open; //numeric
    double rate_high; //numeric
    double rate_low; //numeric
    double rate_close; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} v1_exchange_rates_timeseries_item_t;

__attribute__((deprecated)) v1_exchange_rates_timeseries_item_t *v1_exchange_rates_timeseries_item_create(
    char *time_period_start,
    char *time_period_end,
    char *time_open,
    char *time_close,
    double rate_open,
    double rate_high,
    double rate_low,
    double rate_close
);

void v1_exchange_rates_timeseries_item_free(v1_exchange_rates_timeseries_item_t *v1_exchange_rates_timeseries_item);

v1_exchange_rates_timeseries_item_t *v1_exchange_rates_timeseries_item_parseFromJSON(cJSON *v1_exchange_rates_timeseries_itemJSON);

cJSON *v1_exchange_rates_timeseries_item_convertToJSON(v1_exchange_rates_timeseries_item_t *v1_exchange_rates_timeseries_item);

#endif /* _v1_exchange_rates_timeseries_item_H_ */

