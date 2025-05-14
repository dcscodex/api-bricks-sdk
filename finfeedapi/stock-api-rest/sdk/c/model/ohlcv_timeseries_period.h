/*
 * ohlcv_timeseries_period.h
 *
 * Represents a timeseries period used in exchange rate data.
 */

#ifndef _ohlcv_timeseries_period_H_
#define _ohlcv_timeseries_period_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ohlcv_timeseries_period_t ohlcv_timeseries_period_t;




typedef struct ohlcv_timeseries_period_t {
    char *period_id; // string
    int length_seconds; //numeric
    int length_months; //numeric
    int unit_count; //numeric
    char *unit_name; // string
    char *display_name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} ohlcv_timeseries_period_t;

__attribute__((deprecated)) ohlcv_timeseries_period_t *ohlcv_timeseries_period_create(
    char *period_id,
    int length_seconds,
    int length_months,
    int unit_count,
    char *unit_name,
    char *display_name
);

void ohlcv_timeseries_period_free(ohlcv_timeseries_period_t *ohlcv_timeseries_period);

ohlcv_timeseries_period_t *ohlcv_timeseries_period_parseFromJSON(cJSON *ohlcv_timeseries_periodJSON);

cJSON *ohlcv_timeseries_period_convertToJSON(ohlcv_timeseries_period_t *ohlcv_timeseries_period);

#endif /* _ohlcv_timeseries_period_H_ */

