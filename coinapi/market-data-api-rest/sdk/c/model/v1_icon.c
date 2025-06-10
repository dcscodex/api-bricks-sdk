#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_icon.h"



static v1_icon_t *v1_icon_create_internal(
    char *exchange_id,
    char *asset_id,
    char *url
    ) {
    v1_icon_t *v1_icon_local_var = malloc(sizeof(v1_icon_t));
    if (!v1_icon_local_var) {
        return NULL;
    }
    v1_icon_local_var->exchange_id = exchange_id;
    v1_icon_local_var->asset_id = asset_id;
    v1_icon_local_var->url = url;

    v1_icon_local_var->_library_owned = 1;
    return v1_icon_local_var;
}

__attribute__((deprecated)) v1_icon_t *v1_icon_create(
    char *exchange_id,
    char *asset_id,
    char *url
    ) {
    return v1_icon_create_internal (
        exchange_id,
        asset_id,
        url
        );
}

void v1_icon_free(v1_icon_t *v1_icon) {
    if(NULL == v1_icon){
        return ;
    }
    if(v1_icon->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_icon_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_icon->exchange_id) {
        free(v1_icon->exchange_id);
        v1_icon->exchange_id = NULL;
    }
    if (v1_icon->asset_id) {
        free(v1_icon->asset_id);
        v1_icon->asset_id = NULL;
    }
    if (v1_icon->url) {
        free(v1_icon->url);
        v1_icon->url = NULL;
    }
    free(v1_icon);
}

cJSON *v1_icon_convertToJSON(v1_icon_t *v1_icon) {
    cJSON *item = cJSON_CreateObject();

    // v1_icon->exchange_id
    if(v1_icon->exchange_id) {
    if(cJSON_AddStringToObject(item, "exchange_id", v1_icon->exchange_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_icon->asset_id
    if(v1_icon->asset_id) {
    if(cJSON_AddStringToObject(item, "asset_id", v1_icon->asset_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_icon->url
    if(v1_icon->url) {
    if(cJSON_AddStringToObject(item, "url", v1_icon->url) == NULL) {
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

v1_icon_t *v1_icon_parseFromJSON(cJSON *v1_iconJSON){

    v1_icon_t *v1_icon_local_var = NULL;

    // v1_icon->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(v1_iconJSON, "exchange_id");
    if (cJSON_IsNull(exchange_id)) {
        exchange_id = NULL;
    }
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id) && !cJSON_IsNull(exchange_id))
    {
    goto end; //String
    }
    }

    // v1_icon->asset_id
    cJSON *asset_id = cJSON_GetObjectItemCaseSensitive(v1_iconJSON, "asset_id");
    if (cJSON_IsNull(asset_id)) {
        asset_id = NULL;
    }
    if (asset_id) { 
    if(!cJSON_IsString(asset_id) && !cJSON_IsNull(asset_id))
    {
    goto end; //String
    }
    }

    // v1_icon->url
    cJSON *url = cJSON_GetObjectItemCaseSensitive(v1_iconJSON, "url");
    if (cJSON_IsNull(url)) {
        url = NULL;
    }
    if (url) { 
    if(!cJSON_IsString(url) && !cJSON_IsNull(url))
    {
    goto end; //String
    }
    }


    v1_icon_local_var = v1_icon_create_internal (
        exchange_id && !cJSON_IsNull(exchange_id) ? strdup(exchange_id->valuestring) : NULL,
        asset_id && !cJSON_IsNull(asset_id) ? strdup(asset_id->valuestring) : NULL,
        url && !cJSON_IsNull(url) ? strdup(url->valuestring) : NULL
        );

    return v1_icon_local_var;
end:
    return NULL;

}
