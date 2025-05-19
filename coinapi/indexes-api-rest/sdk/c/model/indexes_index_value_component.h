/*
 * indexes_index_value_component.h
 *
 * 
 */

#ifndef _indexes_index_value_component_H_
#define _indexes_index_value_component_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct indexes_index_value_component_t indexes_index_value_component_t;




typedef struct indexes_index_value_component_t {
    char *component_id; // string
    double component_value; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} indexes_index_value_component_t;

__attribute__((deprecated)) indexes_index_value_component_t *indexes_index_value_component_create(
    char *component_id,
    double component_value
);

void indexes_index_value_component_free(indexes_index_value_component_t *indexes_index_value_component);

indexes_index_value_component_t *indexes_index_value_component_parseFromJSON(cJSON *indexes_index_value_componentJSON);

cJSON *indexes_index_value_component_convertToJSON(indexes_index_value_component_t *indexes_index_value_component);

#endif /* _indexes_index_value_component_H_ */

