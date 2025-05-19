/*
 * metadata_timeseries_period.h
 *
 * Represents a timeseries period used in exchange rate data.
 */

#ifndef _metadata_timeseries_period_H_
#define _metadata_timeseries_period_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct metadata_timeseries_period_t metadata_timeseries_period_t;




typedef struct metadata_timeseries_period_t {
    char *period_id; // string
    int length_seconds; //numeric
    int length_months; //numeric
    int unit_count; //numeric
    char *unit_name; // string
    char *display_name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} metadata_timeseries_period_t;

__attribute__((deprecated)) metadata_timeseries_period_t *metadata_timeseries_period_create(
    char *period_id,
    int length_seconds,
    int length_months,
    int unit_count,
    char *unit_name,
    char *display_name
);

void metadata_timeseries_period_free(metadata_timeseries_period_t *metadata_timeseries_period);

metadata_timeseries_period_t *metadata_timeseries_period_parseFromJSON(cJSON *metadata_timeseries_periodJSON);

cJSON *metadata_timeseries_period_convertToJSON(metadata_timeseries_period_t *metadata_timeseries_period);

#endif /* _metadata_timeseries_period_H_ */

