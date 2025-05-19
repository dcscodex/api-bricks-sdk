/*
 * indexes_index_definition_snapshot_entry.h
 *
 * 
 */

#ifndef _indexes_index_definition_snapshot_entry_H_
#define _indexes_index_definition_snapshot_entry_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct indexes_index_definition_snapshot_entry_t indexes_index_definition_snapshot_entry_t;




typedef struct indexes_index_definition_snapshot_entry_t {
    char *index_id; // string
    char *timestamp; //date time
    double value; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} indexes_index_definition_snapshot_entry_t;

__attribute__((deprecated)) indexes_index_definition_snapshot_entry_t *indexes_index_definition_snapshot_entry_create(
    char *index_id,
    char *timestamp,
    double value
);

void indexes_index_definition_snapshot_entry_free(indexes_index_definition_snapshot_entry_t *indexes_index_definition_snapshot_entry);

indexes_index_definition_snapshot_entry_t *indexes_index_definition_snapshot_entry_parseFromJSON(cJSON *indexes_index_definition_snapshot_entryJSON);

cJSON *indexes_index_definition_snapshot_entry_convertToJSON(indexes_index_definition_snapshot_entry_t *indexes_index_definition_snapshot_entry);

#endif /* _indexes_index_definition_snapshot_entry_H_ */

