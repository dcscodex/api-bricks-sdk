#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "indexes_index_multi_asset_weight.h"



static indexes_index_multi_asset_weight_t *indexes_index_multi_asset_weight_create_internal(
    char *index_id,
    char *asset_id,
    double weight
    ) {
    indexes_index_multi_asset_weight_t *indexes_index_multi_asset_weight_local_var = malloc(sizeof(indexes_index_multi_asset_weight_t));
    if (!indexes_index_multi_asset_weight_local_var) {
        return NULL;
    }
    indexes_index_multi_asset_weight_local_var->index_id = index_id;
    indexes_index_multi_asset_weight_local_var->asset_id = asset_id;
    indexes_index_multi_asset_weight_local_var->weight = weight;

    indexes_index_multi_asset_weight_local_var->_library_owned = 1;
    return indexes_index_multi_asset_weight_local_var;
}

__attribute__((deprecated)) indexes_index_multi_asset_weight_t *indexes_index_multi_asset_weight_create(
    char *index_id,
    char *asset_id,
    double weight
    ) {
    return indexes_index_multi_asset_weight_create_internal (
        index_id,
        asset_id,
        weight
        );
}

void indexes_index_multi_asset_weight_free(indexes_index_multi_asset_weight_t *indexes_index_multi_asset_weight) {
    if(NULL == indexes_index_multi_asset_weight){
        return ;
    }
    if(indexes_index_multi_asset_weight->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "indexes_index_multi_asset_weight_free");
        return ;
    }
    listEntry_t *listEntry;
    if (indexes_index_multi_asset_weight->index_id) {
        free(indexes_index_multi_asset_weight->index_id);
        indexes_index_multi_asset_weight->index_id = NULL;
    }
    if (indexes_index_multi_asset_weight->asset_id) {
        free(indexes_index_multi_asset_weight->asset_id);
        indexes_index_multi_asset_weight->asset_id = NULL;
    }
    free(indexes_index_multi_asset_weight);
}

cJSON *indexes_index_multi_asset_weight_convertToJSON(indexes_index_multi_asset_weight_t *indexes_index_multi_asset_weight) {
    cJSON *item = cJSON_CreateObject();

    // indexes_index_multi_asset_weight->index_id
    if(indexes_index_multi_asset_weight->index_id) {
    if(cJSON_AddStringToObject(item, "indexId", indexes_index_multi_asset_weight->index_id) == NULL) {
    goto fail; //String
    }
    }


    // indexes_index_multi_asset_weight->asset_id
    if(indexes_index_multi_asset_weight->asset_id) {
    if(cJSON_AddStringToObject(item, "assetId", indexes_index_multi_asset_weight->asset_id) == NULL) {
    goto fail; //String
    }
    }


    // indexes_index_multi_asset_weight->weight
    if(indexes_index_multi_asset_weight->weight) {
    if(cJSON_AddNumberToObject(item, "weight", indexes_index_multi_asset_weight->weight) == NULL) {
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

indexes_index_multi_asset_weight_t *indexes_index_multi_asset_weight_parseFromJSON(cJSON *indexes_index_multi_asset_weightJSON){

    indexes_index_multi_asset_weight_t *indexes_index_multi_asset_weight_local_var = NULL;

    // indexes_index_multi_asset_weight->index_id
    cJSON *index_id = cJSON_GetObjectItemCaseSensitive(indexes_index_multi_asset_weightJSON, "indexId");
    if (cJSON_IsNull(index_id)) {
        index_id = NULL;
    }
    if (index_id) { 
    if(!cJSON_IsString(index_id) && !cJSON_IsNull(index_id))
    {
    goto end; //String
    }
    }

    // indexes_index_multi_asset_weight->asset_id
    cJSON *asset_id = cJSON_GetObjectItemCaseSensitive(indexes_index_multi_asset_weightJSON, "assetId");
    if (cJSON_IsNull(asset_id)) {
        asset_id = NULL;
    }
    if (asset_id) { 
    if(!cJSON_IsString(asset_id) && !cJSON_IsNull(asset_id))
    {
    goto end; //String
    }
    }

    // indexes_index_multi_asset_weight->weight
    cJSON *weight = cJSON_GetObjectItemCaseSensitive(indexes_index_multi_asset_weightJSON, "weight");
    if (cJSON_IsNull(weight)) {
        weight = NULL;
    }
    if (weight) { 
    if(!cJSON_IsNumber(weight))
    {
    goto end; //Numeric
    }
    }


    indexes_index_multi_asset_weight_local_var = indexes_index_multi_asset_weight_create_internal (
        index_id && !cJSON_IsNull(index_id) ? strdup(index_id->valuestring) : NULL,
        asset_id && !cJSON_IsNull(asset_id) ? strdup(asset_id->valuestring) : NULL,
        weight ? weight->valuedouble : 0
        );

    return indexes_index_multi_asset_weight_local_var;
end:
    return NULL;

}
