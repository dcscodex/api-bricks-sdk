#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_external_exchange.h"



static v1_external_exchange_t *v1_external_exchange_create_internal(
    char *exchange_id,
    char *external_name,
    char *description,
    char *source_id
    ) {
    v1_external_exchange_t *v1_external_exchange_local_var = malloc(sizeof(v1_external_exchange_t));
    if (!v1_external_exchange_local_var) {
        return NULL;
    }
    v1_external_exchange_local_var->exchange_id = exchange_id;
    v1_external_exchange_local_var->external_name = external_name;
    v1_external_exchange_local_var->description = description;
    v1_external_exchange_local_var->source_id = source_id;

    v1_external_exchange_local_var->_library_owned = 1;
    return v1_external_exchange_local_var;
}

__attribute__((deprecated)) v1_external_exchange_t *v1_external_exchange_create(
    char *exchange_id,
    char *external_name,
    char *description,
    char *source_id
    ) {
    return v1_external_exchange_create_internal (
        exchange_id,
        external_name,
        description,
        source_id
        );
}

void v1_external_exchange_free(v1_external_exchange_t *v1_external_exchange) {
    if(NULL == v1_external_exchange){
        return ;
    }
    if(v1_external_exchange->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_external_exchange_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_external_exchange->exchange_id) {
        free(v1_external_exchange->exchange_id);
        v1_external_exchange->exchange_id = NULL;
    }
    if (v1_external_exchange->external_name) {
        free(v1_external_exchange->external_name);
        v1_external_exchange->external_name = NULL;
    }
    if (v1_external_exchange->description) {
        free(v1_external_exchange->description);
        v1_external_exchange->description = NULL;
    }
    if (v1_external_exchange->source_id) {
        free(v1_external_exchange->source_id);
        v1_external_exchange->source_id = NULL;
    }
    free(v1_external_exchange);
}

cJSON *v1_external_exchange_convertToJSON(v1_external_exchange_t *v1_external_exchange) {
    cJSON *item = cJSON_CreateObject();

    // v1_external_exchange->exchange_id
    if(v1_external_exchange->exchange_id) {
    if(cJSON_AddStringToObject(item, "exchange_id", v1_external_exchange->exchange_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_external_exchange->external_name
    if(v1_external_exchange->external_name) {
    if(cJSON_AddStringToObject(item, "external_name", v1_external_exchange->external_name) == NULL) {
    goto fail; //String
    }
    }


    // v1_external_exchange->description
    if(v1_external_exchange->description) {
    if(cJSON_AddStringToObject(item, "description", v1_external_exchange->description) == NULL) {
    goto fail; //String
    }
    }


    // v1_external_exchange->source_id
    if(v1_external_exchange->source_id) {
    if(cJSON_AddStringToObject(item, "source_id", v1_external_exchange->source_id) == NULL) {
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

v1_external_exchange_t *v1_external_exchange_parseFromJSON(cJSON *v1_external_exchangeJSON){

    v1_external_exchange_t *v1_external_exchange_local_var = NULL;

    // v1_external_exchange->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(v1_external_exchangeJSON, "exchange_id");
    if (cJSON_IsNull(exchange_id)) {
        exchange_id = NULL;
    }
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id) && !cJSON_IsNull(exchange_id))
    {
    goto end; //String
    }
    }

    // v1_external_exchange->external_name
    cJSON *external_name = cJSON_GetObjectItemCaseSensitive(v1_external_exchangeJSON, "external_name");
    if (cJSON_IsNull(external_name)) {
        external_name = NULL;
    }
    if (external_name) { 
    if(!cJSON_IsString(external_name) && !cJSON_IsNull(external_name))
    {
    goto end; //String
    }
    }

    // v1_external_exchange->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(v1_external_exchangeJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // v1_external_exchange->source_id
    cJSON *source_id = cJSON_GetObjectItemCaseSensitive(v1_external_exchangeJSON, "source_id");
    if (cJSON_IsNull(source_id)) {
        source_id = NULL;
    }
    if (source_id) { 
    if(!cJSON_IsString(source_id) && !cJSON_IsNull(source_id))
    {
    goto end; //String
    }
    }


    v1_external_exchange_local_var = v1_external_exchange_create_internal (
        exchange_id && !cJSON_IsNull(exchange_id) ? strdup(exchange_id->valuestring) : NULL,
        external_name && !cJSON_IsNull(external_name) ? strdup(external_name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        source_id && !cJSON_IsNull(source_id) ? strdup(source_id->valuestring) : NULL
        );

    return v1_external_exchange_local_var;
end:
    return NULL;

}
