/*
 * v1_metric_data.h
 *
 * Represents a data model for metric data.
 */

#ifndef _v1_metric_data_H_
#define _v1_metric_data_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_metric_data_t v1_metric_data_t;




typedef struct v1_metric_data_t {
    char *symbol_id; // string
    char *time; //date time
    double value; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} v1_metric_data_t;

__attribute__((deprecated)) v1_metric_data_t *v1_metric_data_create(
    char *symbol_id,
    char *time,
    double value
);

void v1_metric_data_free(v1_metric_data_t *v1_metric_data);

v1_metric_data_t *v1_metric_data_parseFromJSON(cJSON *v1_metric_dataJSON);

cJSON *v1_metric_data_convertToJSON(v1_metric_data_t *v1_metric_data);

#endif /* _v1_metric_data_H_ */

