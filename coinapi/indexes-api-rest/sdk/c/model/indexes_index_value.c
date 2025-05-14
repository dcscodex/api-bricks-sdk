#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "indexes_index_value.h"



static indexes_index_value_t *indexes_index_value_create_internal(
    char *timestamp,
    double value,
    list_t *composition
    ) {
    indexes_index_value_t *indexes_index_value_local_var = malloc(sizeof(indexes_index_value_t));
    if (!indexes_index_value_local_var) {
        return NULL;
    }
    indexes_index_value_local_var->timestamp = timestamp;
    indexes_index_value_local_var->value = value;
    indexes_index_value_local_var->composition = composition;

    indexes_index_value_local_var->_library_owned = 1;
    return indexes_index_value_local_var;
}

__attribute__((deprecated)) indexes_index_value_t *indexes_index_value_create(
    char *timestamp,
    double value,
    list_t *composition
    ) {
    return indexes_index_value_create_internal (
        timestamp,
        value,
        composition
        );
}

void indexes_index_value_free(indexes_index_value_t *indexes_index_value) {
    if(NULL == indexes_index_value){
        return ;
    }
    if(indexes_index_value->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "indexes_index_value_free");
        return ;
    }
    listEntry_t *listEntry;
    if (indexes_index_value->timestamp) {
        free(indexes_index_value->timestamp);
        indexes_index_value->timestamp = NULL;
    }
    if (indexes_index_value->composition) {
        list_ForEach(listEntry, indexes_index_value->composition) {
            indexes_index_value_component_free(listEntry->data);
        }
        list_freeList(indexes_index_value->composition);
        indexes_index_value->composition = NULL;
    }
    free(indexes_index_value);
}

cJSON *indexes_index_value_convertToJSON(indexes_index_value_t *indexes_index_value) {
    cJSON *item = cJSON_CreateObject();

    // indexes_index_value->timestamp
    if(indexes_index_value->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", indexes_index_value->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // indexes_index_value->value
    if(indexes_index_value->value) {
    if(cJSON_AddNumberToObject(item, "value", indexes_index_value->value) == NULL) {
    goto fail; //Numeric
    }
    }


    // indexes_index_value->composition
    if(indexes_index_value->composition) {
    cJSON *composition = cJSON_AddArrayToObject(item, "composition");
    if(composition == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *compositionListEntry;
    if (indexes_index_value->composition) {
    list_ForEach(compositionListEntry, indexes_index_value->composition) {
    cJSON *itemLocal = indexes_index_value_component_convertToJSON(compositionListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(composition, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

indexes_index_value_t *indexes_index_value_parseFromJSON(cJSON *indexes_index_valueJSON){

    indexes_index_value_t *indexes_index_value_local_var = NULL;

    // define the local list for indexes_index_value->composition
    list_t *compositionList = NULL;

    // indexes_index_value->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(indexes_index_valueJSON, "timestamp");
    if (cJSON_IsNull(timestamp)) {
        timestamp = NULL;
    }
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //DateTime
    }
    }

    // indexes_index_value->value
    cJSON *value = cJSON_GetObjectItemCaseSensitive(indexes_index_valueJSON, "value");
    if (cJSON_IsNull(value)) {
        value = NULL;
    }
    if (value) { 
    if(!cJSON_IsNumber(value))
    {
    goto end; //Numeric
    }
    }

    // indexes_index_value->composition
    cJSON *composition = cJSON_GetObjectItemCaseSensitive(indexes_index_valueJSON, "composition");
    if (cJSON_IsNull(composition)) {
        composition = NULL;
    }
    if (composition) { 
    cJSON *composition_local_nonprimitive = NULL;
    if(!cJSON_IsArray(composition)){
        goto end; //nonprimitive container
    }

    compositionList = list_createList();

    cJSON_ArrayForEach(composition_local_nonprimitive,composition )
    {
        if(!cJSON_IsObject(composition_local_nonprimitive)){
            goto end;
        }
        indexes_index_value_component_t *compositionItem = indexes_index_value_component_parseFromJSON(composition_local_nonprimitive);

        list_addElement(compositionList, compositionItem);
    }
    }


    indexes_index_value_local_var = indexes_index_value_create_internal (
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        value ? value->valuedouble : 0,
        composition ? compositionList : NULL
        );

    return indexes_index_value_local_var;
end:
    if (compositionList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, compositionList) {
            indexes_index_value_component_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(compositionList);
        compositionList = NULL;
    }
    return NULL;

}
