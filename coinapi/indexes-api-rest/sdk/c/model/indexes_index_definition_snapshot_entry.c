#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "indexes_index_definition_snapshot_entry.h"



static indexes_index_definition_snapshot_entry_t *indexes_index_definition_snapshot_entry_create_internal(
    char *index_id,
    char *timestamp,
    double value
    ) {
    indexes_index_definition_snapshot_entry_t *indexes_index_definition_snapshot_entry_local_var = malloc(sizeof(indexes_index_definition_snapshot_entry_t));
    if (!indexes_index_definition_snapshot_entry_local_var) {
        return NULL;
    }
    indexes_index_definition_snapshot_entry_local_var->index_id = index_id;
    indexes_index_definition_snapshot_entry_local_var->timestamp = timestamp;
    indexes_index_definition_snapshot_entry_local_var->value = value;

    indexes_index_definition_snapshot_entry_local_var->_library_owned = 1;
    return indexes_index_definition_snapshot_entry_local_var;
}

__attribute__((deprecated)) indexes_index_definition_snapshot_entry_t *indexes_index_definition_snapshot_entry_create(
    char *index_id,
    char *timestamp,
    double value
    ) {
    return indexes_index_definition_snapshot_entry_create_internal (
        index_id,
        timestamp,
        value
        );
}

void indexes_index_definition_snapshot_entry_free(indexes_index_definition_snapshot_entry_t *indexes_index_definition_snapshot_entry) {
    if(NULL == indexes_index_definition_snapshot_entry){
        return ;
    }
    if(indexes_index_definition_snapshot_entry->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "indexes_index_definition_snapshot_entry_free");
        return ;
    }
    listEntry_t *listEntry;
    if (indexes_index_definition_snapshot_entry->index_id) {
        free(indexes_index_definition_snapshot_entry->index_id);
        indexes_index_definition_snapshot_entry->index_id = NULL;
    }
    if (indexes_index_definition_snapshot_entry->timestamp) {
        free(indexes_index_definition_snapshot_entry->timestamp);
        indexes_index_definition_snapshot_entry->timestamp = NULL;
    }
    free(indexes_index_definition_snapshot_entry);
}

cJSON *indexes_index_definition_snapshot_entry_convertToJSON(indexes_index_definition_snapshot_entry_t *indexes_index_definition_snapshot_entry) {
    cJSON *item = cJSON_CreateObject();

    // indexes_index_definition_snapshot_entry->index_id
    if(indexes_index_definition_snapshot_entry->index_id) {
    if(cJSON_AddStringToObject(item, "index_id", indexes_index_definition_snapshot_entry->index_id) == NULL) {
    goto fail; //String
    }
    }


    // indexes_index_definition_snapshot_entry->timestamp
    if(indexes_index_definition_snapshot_entry->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", indexes_index_definition_snapshot_entry->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // indexes_index_definition_snapshot_entry->value
    if(indexes_index_definition_snapshot_entry->value) {
    if(cJSON_AddNumberToObject(item, "value", indexes_index_definition_snapshot_entry->value) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

indexes_index_definition_snapshot_entry_t *indexes_index_definition_snapshot_entry_parseFromJSON(cJSON *indexes_index_definition_snapshot_entryJSON){

    indexes_index_definition_snapshot_entry_t *indexes_index_definition_snapshot_entry_local_var = NULL;

    // indexes_index_definition_snapshot_entry->index_id
    cJSON *index_id = cJSON_GetObjectItemCaseSensitive(indexes_index_definition_snapshot_entryJSON, "index_id");
    if (cJSON_IsNull(index_id)) {
        index_id = NULL;
    }
    if (index_id) { 
    if(!cJSON_IsString(index_id) && !cJSON_IsNull(index_id))
    {
    goto end; //String
    }
    }

    // indexes_index_definition_snapshot_entry->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(indexes_index_definition_snapshot_entryJSON, "timestamp");
    if (cJSON_IsNull(timestamp)) {
        timestamp = NULL;
    }
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //DateTime
    }
    }

    // indexes_index_definition_snapshot_entry->value
    cJSON *value = cJSON_GetObjectItemCaseSensitive(indexes_index_definition_snapshot_entryJSON, "value");
    if (cJSON_IsNull(value)) {
        value = NULL;
    }
    if (value) { 
    if(!cJSON_IsNumber(value))
    {
    goto end; //Numeric
    }
    }


    indexes_index_definition_snapshot_entry_local_var = indexes_index_definition_snapshot_entry_create_internal (
        index_id && !cJSON_IsNull(index_id) ? strdup(index_id->valuestring) : NULL,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        value ? value->valuedouble : 0
        );

    return indexes_index_definition_snapshot_entry_local_var;
end:
    return NULL;

}
