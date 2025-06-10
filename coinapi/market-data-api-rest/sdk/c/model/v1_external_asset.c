#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_external_asset.h"



static v1_external_asset_t *v1_external_asset_create_internal(
    char *asset_id,
    char *description,
    char *asset_type
    ) {
    v1_external_asset_t *v1_external_asset_local_var = malloc(sizeof(v1_external_asset_t));
    if (!v1_external_asset_local_var) {
        return NULL;
    }
    v1_external_asset_local_var->asset_id = asset_id;
    v1_external_asset_local_var->description = description;
    v1_external_asset_local_var->asset_type = asset_type;

    v1_external_asset_local_var->_library_owned = 1;
    return v1_external_asset_local_var;
}

__attribute__((deprecated)) v1_external_asset_t *v1_external_asset_create(
    char *asset_id,
    char *description,
    char *asset_type
    ) {
    return v1_external_asset_create_internal (
        asset_id,
        description,
        asset_type
        );
}

void v1_external_asset_free(v1_external_asset_t *v1_external_asset) {
    if(NULL == v1_external_asset){
        return ;
    }
    if(v1_external_asset->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_external_asset_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_external_asset->asset_id) {
        free(v1_external_asset->asset_id);
        v1_external_asset->asset_id = NULL;
    }
    if (v1_external_asset->description) {
        free(v1_external_asset->description);
        v1_external_asset->description = NULL;
    }
    if (v1_external_asset->asset_type) {
        free(v1_external_asset->asset_type);
        v1_external_asset->asset_type = NULL;
    }
    free(v1_external_asset);
}

cJSON *v1_external_asset_convertToJSON(v1_external_asset_t *v1_external_asset) {
    cJSON *item = cJSON_CreateObject();

    // v1_external_asset->asset_id
    if(v1_external_asset->asset_id) {
    if(cJSON_AddStringToObject(item, "asset_id", v1_external_asset->asset_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_external_asset->description
    if(v1_external_asset->description) {
    if(cJSON_AddStringToObject(item, "description", v1_external_asset->description) == NULL) {
    goto fail; //String
    }
    }


    // v1_external_asset->asset_type
    if(v1_external_asset->asset_type) {
    if(cJSON_AddStringToObject(item, "asset_type", v1_external_asset->asset_type) == NULL) {
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

v1_external_asset_t *v1_external_asset_parseFromJSON(cJSON *v1_external_assetJSON){

    v1_external_asset_t *v1_external_asset_local_var = NULL;

    // v1_external_asset->asset_id
    cJSON *asset_id = cJSON_GetObjectItemCaseSensitive(v1_external_assetJSON, "asset_id");
    if (cJSON_IsNull(asset_id)) {
        asset_id = NULL;
    }
    if (asset_id) { 
    if(!cJSON_IsString(asset_id) && !cJSON_IsNull(asset_id))
    {
    goto end; //String
    }
    }

    // v1_external_asset->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(v1_external_assetJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // v1_external_asset->asset_type
    cJSON *asset_type = cJSON_GetObjectItemCaseSensitive(v1_external_assetJSON, "asset_type");
    if (cJSON_IsNull(asset_type)) {
        asset_type = NULL;
    }
    if (asset_type) { 
    if(!cJSON_IsString(asset_type) && !cJSON_IsNull(asset_type))
    {
    goto end; //String
    }
    }


    v1_external_asset_local_var = v1_external_asset_create_internal (
        asset_id && !cJSON_IsNull(asset_id) ? strdup(asset_id->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        asset_type && !cJSON_IsNull(asset_type) ? strdup(asset_type->valuestring) : NULL
        );

    return v1_external_asset_local_var;
end:
    return NULL;

}
