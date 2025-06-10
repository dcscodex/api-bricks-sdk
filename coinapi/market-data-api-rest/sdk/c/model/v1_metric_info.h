/*
 * v1_metric_info.h
 *
 * Represents a metric information.
 */

#ifndef _v1_metric_info_H_
#define _v1_metric_info_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_metric_info_t v1_metric_info_t;




typedef struct v1_metric_info_t {
    char *metric_id; // string
    char *description; // string
    char *source_id; // string

    int _library_owned; // Is the library responsible for freeing this object?
} v1_metric_info_t;

__attribute__((deprecated)) v1_metric_info_t *v1_metric_info_create(
    char *metric_id,
    char *description,
    char *source_id
);

void v1_metric_info_free(v1_metric_info_t *v1_metric_info);

v1_metric_info_t *v1_metric_info_parseFromJSON(cJSON *v1_metric_infoJSON);

cJSON *v1_metric_info_convertToJSON(v1_metric_info_t *v1_metric_info);

#endif /* _v1_metric_info_H_ */

