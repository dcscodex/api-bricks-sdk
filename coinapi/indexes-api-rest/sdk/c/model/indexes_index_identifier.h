/*
 * indexes_index_identifier.h
 *
 * Represents an index id
 */

#ifndef _indexes_index_identifier_H_
#define _indexes_index_identifier_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct indexes_index_identifier_t indexes_index_identifier_t;




typedef struct indexes_index_identifier_t {
    char *id; // string

    int _library_owned; // Is the library responsible for freeing this object?
} indexes_index_identifier_t;

__attribute__((deprecated)) indexes_index_identifier_t *indexes_index_identifier_create(
    char *id
);

void indexes_index_identifier_free(indexes_index_identifier_t *indexes_index_identifier);

indexes_index_identifier_t *indexes_index_identifier_parseFromJSON(cJSON *indexes_index_identifierJSON);

cJSON *indexes_index_identifier_convertToJSON(indexes_index_identifier_t *indexes_index_identifier);

#endif /* _indexes_index_identifier_H_ */

