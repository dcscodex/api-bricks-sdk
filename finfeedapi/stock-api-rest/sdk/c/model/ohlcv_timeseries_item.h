/*
 * ohlcv_timeseries_item.h
 *
 * Represents a timeseries item with price and volume information.
 */

#ifndef _ohlcv_timeseries_item_H_
#define _ohlcv_timeseries_item_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ohlcv_timeseries_item_t ohlcv_timeseries_item_t;




typedef struct ohlcv_timeseries_item_t {
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
} ohlcv_timeseries_item_t;

__attribute__((deprecated)) ohlcv_timeseries_item_t *ohlcv_timeseries_item_create(
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

void ohlcv_timeseries_item_free(ohlcv_timeseries_item_t *ohlcv_timeseries_item);

ohlcv_timeseries_item_t *ohlcv_timeseries_item_parseFromJSON(cJSON *ohlcv_timeseries_itemJSON);

cJSON *ohlcv_timeseries_item_convertToJSON(ohlcv_timeseries_item_t *ohlcv_timeseries_item);

#endif /* _ohlcv_timeseries_item_H_ */

