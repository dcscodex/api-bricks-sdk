/*
 * v1_metric.h
 *
 * Represents a metric.
 */

#ifndef _v1_metric_H_
#define _v1_metric_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_metric_t v1_metric_t;




typedef struct v1_metric_t {
    char *metric_id; // string
    char *description; // string

    int _library_owned; // Is the library responsible for freeing this object?
} v1_metric_t;

__attribute__((deprecated)) v1_metric_t *v1_metric_create(
    char *metric_id,
    char *description
);

void v1_metric_free(v1_metric_t *v1_metric);

v1_metric_t *v1_metric_parseFromJSON(cJSON *v1_metricJSON);

cJSON *v1_metric_convertToJSON(v1_metric_t *v1_metric);

#endif /* _v1_metric_H_ */

