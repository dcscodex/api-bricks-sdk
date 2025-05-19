#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "metadata_exchange.h"



static metadata_exchange_t *metadata_exchange_create_internal(
    char *exchange_id,
    char *website,
    char *name
    ) {
    metadata_exchange_t *metadata_exchange_local_var = malloc(sizeof(metadata_exchange_t));
    if (!metadata_exchange_local_var) {
        return NULL;
    }
    metadata_exchange_local_var->exchange_id = exchange_id;
    metadata_exchange_local_var->website = website;
    metadata_exchange_local_var->name = name;

    metadata_exchange_local_var->_library_owned = 1;
    return metadata_exchange_local_var;
}

__attribute__((deprecated)) metadata_exchange_t *metadata_exchange_create(
    char *exchange_id,
    char *website,
    char *name
    ) {
    return metadata_exchange_create_internal (
        exchange_id,
        website,
        name
        );
}

void metadata_exchange_free(metadata_exchange_t *metadata_exchange) {
    if(NULL == metadata_exchange){
        return ;
    }
    if(metadata_exchange->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "metadata_exchange_free");
        return ;
    }
    listEntry_t *listEntry;
    if (metadata_exchange->exchange_id) {
        free(metadata_exchange->exchange_id);
        metadata_exchange->exchange_id = NULL;
    }
    if (metadata_exchange->website) {
        free(metadata_exchange->website);
        metadata_exchange->website = NULL;
    }
    if (metadata_exchange->name) {
        free(metadata_exchange->name);
        metadata_exchange->name = NULL;
    }
    free(metadata_exchange);
}

cJSON *metadata_exchange_convertToJSON(metadata_exchange_t *metadata_exchange) {
    cJSON *item = cJSON_CreateObject();

    // metadata_exchange->exchange_id
    if(metadata_exchange->exchange_id) {
    if(cJSON_AddStringToObject(item, "exchange_id", metadata_exchange->exchange_id) == NULL) {
    goto fail; //String
    }
    }


    // metadata_exchange->website
    if(metadata_exchange->website) {
    if(cJSON_AddStringToObject(item, "website", metadata_exchange->website) == NULL) {
    goto fail; //String
    }
    }


    // metadata_exchange->name
    if(metadata_exchange->name) {
    if(cJSON_AddStringToObject(item, "name", metadata_exchange->name) == NULL) {
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

metadata_exchange_t *metadata_exchange_parseFromJSON(cJSON *metadata_exchangeJSON){

    metadata_exchange_t *metadata_exchange_local_var = NULL;

    // metadata_exchange->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(metadata_exchangeJSON, "exchange_id");
    if (cJSON_IsNull(exchange_id)) {
        exchange_id = NULL;
    }
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id) && !cJSON_IsNull(exchange_id))
    {
    goto end; //String
    }
    }

    // metadata_exchange->website
    cJSON *website = cJSON_GetObjectItemCaseSensitive(metadata_exchangeJSON, "website");
    if (cJSON_IsNull(website)) {
        website = NULL;
    }
    if (website) { 
    if(!cJSON_IsString(website) && !cJSON_IsNull(website))
    {
    goto end; //String
    }
    }

    // metadata_exchange->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(metadata_exchangeJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }


    metadata_exchange_local_var = metadata_exchange_create_internal (
        exchange_id && !cJSON_IsNull(exchange_id) ? strdup(exchange_id->valuestring) : NULL,
        website && !cJSON_IsNull(website) ? strdup(website->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL
        );

    return metadata_exchange_local_var;
end:
    return NULL;

}
