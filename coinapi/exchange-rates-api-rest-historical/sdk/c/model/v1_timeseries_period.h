/*
 * v1_timeseries_period.h
 *
 * Represents a timeseries period used in exchange rate data.
 */

#ifndef _v1_timeseries_period_H_
#define _v1_timeseries_period_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_timeseries_period_t v1_timeseries_period_t;




typedef struct v1_timeseries_period_t {
    char *period_id; // string
    int length_seconds; //numeric
    int length_months; //numeric
    int unit_count; //numeric
    char *unit_name; // string
    char *display_name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} v1_timeseries_period_t;

__attribute__((deprecated)) v1_timeseries_period_t *v1_timeseries_period_create(
    char *period_id,
    int length_seconds,
    int length_months,
    int unit_count,
    char *unit_name,
    char *display_name
);

void v1_timeseries_period_free(v1_timeseries_period_t *v1_timeseries_period);

v1_timeseries_period_t *v1_timeseries_period_parseFromJSON(cJSON *v1_timeseries_periodJSON);

cJSON *v1_timeseries_period_convertToJSON(v1_timeseries_period_t *v1_timeseries_period);

#endif /* _v1_timeseries_period_H_ */

