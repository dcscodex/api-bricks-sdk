#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "indexes_index_identifier.h"



static indexes_index_identifier_t *indexes_index_identifier_create_internal(
    char *id
    ) {
    indexes_index_identifier_t *indexes_index_identifier_local_var = malloc(sizeof(indexes_index_identifier_t));
    if (!indexes_index_identifier_local_var) {
        return NULL;
    }
    indexes_index_identifier_local_var->id = id;

    indexes_index_identifier_local_var->_library_owned = 1;
    return indexes_index_identifier_local_var;
}

__attribute__((deprecated)) indexes_index_identifier_t *indexes_index_identifier_create(
    char *id
    ) {
    return indexes_index_identifier_create_internal (
        id
        );
}

void indexes_index_identifier_free(indexes_index_identifier_t *indexes_index_identifier) {
    if(NULL == indexes_index_identifier){
        return ;
    }
    if(indexes_index_identifier->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "indexes_index_identifier_free");
        return ;
    }
    listEntry_t *listEntry;
    if (indexes_index_identifier->id) {
        free(indexes_index_identifier->id);
        indexes_index_identifier->id = NULL;
    }
    free(indexes_index_identifier);
}

cJSON *indexes_index_identifier_convertToJSON(indexes_index_identifier_t *indexes_index_identifier) {
    cJSON *item = cJSON_CreateObject();

    // indexes_index_identifier->id
    if(indexes_index_identifier->id) {
    if(cJSON_AddStringToObject(item, "id", indexes_index_identifier->id) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

indexes_index_identifier_t *indexes_index_identifier_parseFromJSON(cJSON *indexes_index_identifierJSON){

    indexes_index_identifier_t *indexes_index_identifier_local_var = NULL;

    // indexes_index_identifier->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(indexes_index_identifierJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }


    indexes_index_identifier_local_var = indexes_index_identifier_create_internal (
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL
        );

    return indexes_index_identifier_local_var;
end:
    return NULL;

}
