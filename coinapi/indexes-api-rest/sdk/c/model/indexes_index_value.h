/*
 * indexes_index_value.h
 *
 * 
 */

#ifndef _indexes_index_value_H_
#define _indexes_index_value_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct indexes_index_value_t indexes_index_value_t;

#include "indexes_index_value_component.h"



typedef struct indexes_index_value_t {
    char *timestamp; //date time
    double value; //numeric
    list_t *composition; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} indexes_index_value_t;

__attribute__((deprecated)) indexes_index_value_t *indexes_index_value_create(
    char *timestamp,
    double value,
    list_t *composition
);

void indexes_index_value_free(indexes_index_value_t *indexes_index_value);

indexes_index_value_t *indexes_index_value_parseFromJSON(cJSON *indexes_index_valueJSON);

cJSON *indexes_index_value_convertToJSON(indexes_index_value_t *indexes_index_value);

#endif /* _indexes_index_value_H_ */

