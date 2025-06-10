/*
 * models_exchange_timeseries_item.h
 *
 * Represents a timeseries item with price and volume information.
 */

#ifndef _models_exchange_timeseries_item_H_
#define _models_exchange_timeseries_item_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct models_exchange_timeseries_item_t models_exchange_timeseries_item_t;




typedef struct models_exchange_timeseries_item_t {
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
    char *symbol_id_exchange; // string
    char *symbol_id_coinapi; // string

    int _library_owned; // Is the library responsible for freeing this object?
} models_exchange_timeseries_item_t;

__attribute__((deprecated)) models_exchange_timeseries_item_t *models_exchange_timeseries_item_create(
    char *time_period_start,
    char *time_period_end,
    char *time_open,
    char *time_close,
    double price_open,
    double price_high,
    double price_low,
    double price_close,
    double volume_traded,
    long trades_count,
    char *symbol_id_exchange,
    char *symbol_id_coinapi
);

void models_exchange_timeseries_item_free(models_exchange_timeseries_item_t *models_exchange_timeseries_item);

models_exchange_timeseries_item_t *models_exchange_timeseries_item_parseFromJSON(cJSON *models_exchange_timeseries_itemJSON);

cJSON *models_exchange_timeseries_item_convertToJSON(models_exchange_timeseries_item_t *models_exchange_timeseries_item);

#endif /* _models_exchange_timeseries_item_H_ */

