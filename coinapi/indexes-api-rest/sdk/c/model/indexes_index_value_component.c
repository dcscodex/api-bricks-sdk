#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "indexes_index_value_component.h"



static indexes_index_value_component_t *indexes_index_value_component_create_internal(
    char *component_id,
    double component_value
    ) {
    indexes_index_value_component_t *indexes_index_value_component_local_var = malloc(sizeof(indexes_index_value_component_t));
    if (!indexes_index_value_component_local_var) {
        return NULL;
    }
    indexes_index_value_component_local_var->component_id = component_id;
    indexes_index_value_component_local_var->component_value = component_value;

    indexes_index_value_component_local_var->_library_owned = 1;
    return indexes_index_value_component_local_var;
}

__attribute__((deprecated)) indexes_index_value_component_t *indexes_index_value_component_create(
    char *component_id,
    double component_value
    ) {
    return indexes_index_value_component_create_internal (
        component_id,
        component_value
        );
}

void indexes_index_value_component_free(indexes_index_value_component_t *indexes_index_value_component) {
    if(NULL == indexes_index_value_component){
        return ;
    }
    if(indexes_index_value_component->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "indexes_index_value_component_free");
        return ;
    }
    listEntry_t *listEntry;
    if (indexes_index_value_component->component_id) {
        free(indexes_index_value_component->component_id);
        indexes_index_value_component->component_id = NULL;
    }
    free(indexes_index_value_component);
}

cJSON *indexes_index_value_component_convertToJSON(indexes_index_value_component_t *indexes_index_value_component) {
    cJSON *item = cJSON_CreateObject();

    // indexes_index_value_component->component_id
    if(indexes_index_value_component->component_id) {
    if(cJSON_AddStringToObject(item, "component_id", indexes_index_value_component->component_id) == NULL) {
    goto fail; //String
    }
    }


    // indexes_index_value_component->component_value
    if(indexes_index_value_component->component_value) {
    if(cJSON_AddNumberToObject(item, "component_value", indexes_index_value_component->component_value) == NULL) {
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

indexes_index_value_component_t *indexes_index_value_component_parseFromJSON(cJSON *indexes_index_value_componentJSON){

    indexes_index_value_component_t *indexes_index_value_component_local_var = NULL;

    // indexes_index_value_component->component_id
    cJSON *component_id = cJSON_GetObjectItemCaseSensitive(indexes_index_value_componentJSON, "component_id");
    if (cJSON_IsNull(component_id)) {
        component_id = NULL;
    }
    if (component_id) { 
    if(!cJSON_IsString(component_id) && !cJSON_IsNull(component_id))
    {
    goto end; //String
    }
    }

    // indexes_index_value_component->component_value
    cJSON *component_value = cJSON_GetObjectItemCaseSensitive(indexes_index_value_componentJSON, "component_value");
    if (cJSON_IsNull(component_value)) {
        component_value = NULL;
    }
    if (component_value) { 
    if(!cJSON_IsNumber(component_value))
    {
    goto end; //Numeric
    }
    }


    indexes_index_value_component_local_var = indexes_index_value_component_create_internal (
        component_id && !cJSON_IsNull(component_id) ? strdup(component_id->valuestring) : NULL,
        component_value ? component_value->valuedouble : 0
        );

    return indexes_index_value_component_local_var;
end:
    return NULL;

}
