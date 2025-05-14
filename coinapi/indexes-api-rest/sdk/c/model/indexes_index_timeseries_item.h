/*
 * indexes_index_timeseries_item.h
 *
 * Represents a timeseries item with value information.
 */

#ifndef _indexes_index_timeseries_item_H_
#define _indexes_index_timeseries_item_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct indexes_index_timeseries_item_t indexes_index_timeseries_item_t;




typedef struct indexes_index_timeseries_item_t {
    char *time_period_start; //date time
    char *time_period_end; //date time
    char *time_open; //date time
    char *time_close; //date time
    double value_open; //numeric
    double value_high; //numeric
    double value_low; //numeric
    double value_close; //numeric
    long value_count; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} indexes_index_timeseries_item_t;

__attribute__((deprecated)) indexes_index_timeseries_item_t *indexes_index_timeseries_item_create(
    char *time_period_start,
    char *time_period_end,
    char *time_open,
    char *time_close,
    double value_open,
    double value_high,
    double value_low,
    double value_close,
    long value_count
);

void indexes_index_timeseries_item_free(indexes_index_timeseries_item_t *indexes_index_timeseries_item);

indexes_index_timeseries_item_t *indexes_index_timeseries_item_parseFromJSON(cJSON *indexes_index_timeseries_itemJSON);

cJSON *indexes_index_timeseries_item_convertToJSON(indexes_index_timeseries_item_t *indexes_index_timeseries_item);

#endif /* _indexes_index_timeseries_item_H_ */

