/*
 * v1_timeseries_item.h
 *
 * Represents a timeseries item with price and volume information.
 */

#ifndef _v1_timeseries_item_H_
#define _v1_timeseries_item_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_timeseries_item_t v1_timeseries_item_t;




typedef struct v1_timeseries_item_t {
    char *time_period_start; //date time
    char *time_period_end; //date time
    char *time_open; //date time
    char *time_close; //date time
    double price_open; //numeric
    double price_high; //numeric
    double price_low; //numeric
    double price_close; //numeric
    double volume_traded; //numeric
    long trades_count; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} v1_timeseries_item_t;

__attribute__((deprecated)) v1_timeseries_item_t *v1_timeseries_item_create(
    char *time_period_start,
    char *time_period_end,
    char *time_open,
    char *time_close,
    double price_open,
    double price_high,
    double price_low,
    double price_close,
    double volume_traded,
    long trades_count
);

void v1_timeseries_item_free(v1_timeseries_item_t *v1_timeseries_item);

v1_timeseries_item_t *v1_timeseries_item_parseFromJSON(cJSON *v1_timeseries_itemJSON);

cJSON *v1_timeseries_item_convertToJSON(v1_timeseries_item_t *v1_timeseries_item);

#endif /* _v1_timeseries_item_H_ */

