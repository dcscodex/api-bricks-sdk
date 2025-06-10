#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_listing_item.h"



static v1_listing_item_t *v1_listing_item_create_internal(
    char *metric_id,
    char *symbol_id,
    char *symbol_id_external,
    char *exchange_id,
    char *asset_id,
    char *asset_id_external,
    char *chain_id,
    char *network_id
    ) {
    v1_listing_item_t *v1_listing_item_local_var = malloc(sizeof(v1_listing_item_t));
    if (!v1_listing_item_local_var) {
        return NULL;
    }
    v1_listing_item_local_var->metric_id = metric_id;
    v1_listing_item_local_var->symbol_id = symbol_id;
    v1_listing_item_local_var->symbol_id_external = symbol_id_external;
    v1_listing_item_local_var->exchange_id = exchange_id;
    v1_listing_item_local_var->asset_id = asset_id;
    v1_listing_item_local_var->asset_id_external = asset_id_external;
    v1_listing_item_local_var->chain_id = chain_id;
    v1_listing_item_local_var->network_id = network_id;

    v1_listing_item_local_var->_library_owned = 1;
    return v1_listing_item_local_var;
}

__attribute__((deprecated)) v1_listing_item_t *v1_listing_item_create(
    char *metric_id,
    char *symbol_id,
    char *symbol_id_external,
    char *exchange_id,
    char *asset_id,
    char *asset_id_external,
    char *chain_id,
    char *network_id
    ) {
    return v1_listing_item_create_internal (
        metric_id,
        symbol_id,
        symbol_id_external,
        exchange_id,
        asset_id,
        asset_id_external,
        chain_id,
        network_id
        );
}

void v1_listing_item_free(v1_listing_item_t *v1_listing_item) {
    if(NULL == v1_listing_item){
        return ;
    }
    if(v1_listing_item->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_listing_item_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_listing_item->metric_id) {
        free(v1_listing_item->metric_id);
        v1_listing_item->metric_id = NULL;
    }
    if (v1_listing_item->symbol_id) {
        free(v1_listing_item->symbol_id);
        v1_listing_item->symbol_id = NULL;
    }
    if (v1_listing_item->symbol_id_external) {
        free(v1_listing_item->symbol_id_external);
        v1_listing_item->symbol_id_external = NULL;
    }
    if (v1_listing_item->exchange_id) {
        free(v1_listing_item->exchange_id);
        v1_listing_item->exchange_id = NULL;
    }
    if (v1_listing_item->asset_id) {
        free(v1_listing_item->asset_id);
        v1_listing_item->asset_id = NULL;
    }
    if (v1_listing_item->asset_id_external) {
        free(v1_listing_item->asset_id_external);
        v1_listing_item->asset_id_external = NULL;
    }
    if (v1_listing_item->chain_id) {
        free(v1_listing_item->chain_id);
        v1_listing_item->chain_id = NULL;
    }
    if (v1_listing_item->network_id) {
        free(v1_listing_item->network_id);
        v1_listing_item->network_id = NULL;
    }
    free(v1_listing_item);
}

cJSON *v1_listing_item_convertToJSON(v1_listing_item_t *v1_listing_item) {
    cJSON *item = cJSON_CreateObject();

    // v1_listing_item->metric_id
    if(v1_listing_item->metric_id) {
    if(cJSON_AddStringToObject(item, "metric_id", v1_listing_item->metric_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_listing_item->symbol_id
    if(v1_listing_item->symbol_id) {
    if(cJSON_AddStringToObject(item, "symbol_id", v1_listing_item->symbol_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_listing_item->symbol_id_external
    if(v1_listing_item->symbol_id_external) {
    if(cJSON_AddStringToObject(item, "symbol_id_external", v1_listing_item->symbol_id_external) == NULL) {
    goto fail; //String
    }
    }


    // v1_listing_item->exchange_id
    if(v1_listing_item->exchange_id) {
    if(cJSON_AddStringToObject(item, "exchange_id", v1_listing_item->exchange_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_listing_item->asset_id
    if(v1_listing_item->asset_id) {
    if(cJSON_AddStringToObject(item, "asset_id", v1_listing_item->asset_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_listing_item->asset_id_external
    if(v1_listing_item->asset_id_external) {
    if(cJSON_AddStringToObject(item, "asset_id_external", v1_listing_item->asset_id_external) == NULL) {
    goto fail; //String
    }
    }


    // v1_listing_item->chain_id
    if(v1_listing_item->chain_id) {
    if(cJSON_AddStringToObject(item, "chain_id", v1_listing_item->chain_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_listing_item->network_id
    if(v1_listing_item->network_id) {
    if(cJSON_AddStringToObject(item, "network_id", v1_listing_item->network_id) == NULL) {
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

v1_listing_item_t *v1_listing_item_parseFromJSON(cJSON *v1_listing_itemJSON){

    v1_listing_item_t *v1_listing_item_local_var = NULL;

    // v1_listing_item->metric_id
    cJSON *metric_id = cJSON_GetObjectItemCaseSensitive(v1_listing_itemJSON, "metric_id");
    if (cJSON_IsNull(metric_id)) {
        metric_id = NULL;
    }
    if (metric_id) { 
    if(!cJSON_IsString(metric_id) && !cJSON_IsNull(metric_id))
    {
    goto end; //String
    }
    }

    // v1_listing_item->symbol_id
    cJSON *symbol_id = cJSON_GetObjectItemCaseSensitive(v1_listing_itemJSON, "symbol_id");
    if (cJSON_IsNull(symbol_id)) {
        symbol_id = NULL;
    }
    if (symbol_id) { 
    if(!cJSON_IsString(symbol_id) && !cJSON_IsNull(symbol_id))
    {
    goto end; //String
    }
    }

    // v1_listing_item->symbol_id_external
    cJSON *symbol_id_external = cJSON_GetObjectItemCaseSensitive(v1_listing_itemJSON, "symbol_id_external");
    if (cJSON_IsNull(symbol_id_external)) {
        symbol_id_external = NULL;
    }
    if (symbol_id_external) { 
    if(!cJSON_IsString(symbol_id_external) && !cJSON_IsNull(symbol_id_external))
    {
    goto end; //String
    }
    }

    // v1_listing_item->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(v1_listing_itemJSON, "exchange_id");
    if (cJSON_IsNull(exchange_id)) {
        exchange_id = NULL;
    }
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id) && !cJSON_IsNull(exchange_id))
    {
    goto end; //String
    }
    }

    // v1_listing_item->asset_id
    cJSON *asset_id = cJSON_GetObjectItemCaseSensitive(v1_listing_itemJSON, "asset_id");
    if (cJSON_IsNull(asset_id)) {
        asset_id = NULL;
    }
    if (asset_id) { 
    if(!cJSON_IsString(asset_id) && !cJSON_IsNull(asset_id))
    {
    goto end; //String
    }
    }

    // v1_listing_item->asset_id_external
    cJSON *asset_id_external = cJSON_GetObjectItemCaseSensitive(v1_listing_itemJSON, "asset_id_external");
    if (cJSON_IsNull(asset_id_external)) {
        asset_id_external = NULL;
    }
    if (asset_id_external) { 
    if(!cJSON_IsString(asset_id_external) && !cJSON_IsNull(asset_id_external))
    {
    goto end; //String
    }
    }

    // v1_listing_item->chain_id
    cJSON *chain_id = cJSON_GetObjectItemCaseSensitive(v1_listing_itemJSON, "chain_id");
    if (cJSON_IsNull(chain_id)) {
        chain_id = NULL;
    }
    if (chain_id) { 
    if(!cJSON_IsString(chain_id) && !cJSON_IsNull(chain_id))
    {
    goto end; //String
    }
    }

    // v1_listing_item->network_id
    cJSON *network_id = cJSON_GetObjectItemCaseSensitive(v1_listing_itemJSON, "network_id");
    if (cJSON_IsNull(network_id)) {
        network_id = NULL;
    }
    if (network_id) { 
    if(!cJSON_IsString(network_id) && !cJSON_IsNull(network_id))
    {
    goto end; //String
    }
    }


    v1_listing_item_local_var = v1_listing_item_create_internal (
        metric_id && !cJSON_IsNull(metric_id) ? strdup(metric_id->valuestring) : NULL,
        symbol_id && !cJSON_IsNull(symbol_id) ? strdup(symbol_id->valuestring) : NULL,
        symbol_id_external && !cJSON_IsNull(symbol_id_external) ? strdup(symbol_id_external->valuestring) : NULL,
        exchange_id && !cJSON_IsNull(exchange_id) ? strdup(exchange_id->valuestring) : NULL,
        asset_id && !cJSON_IsNull(asset_id) ? strdup(asset_id->valuestring) : NULL,
        asset_id_external && !cJSON_IsNull(asset_id_external) ? strdup(asset_id_external->valuestring) : NULL,
        chain_id && !cJSON_IsNull(chain_id) ? strdup(chain_id->valuestring) : NULL,
        network_id && !cJSON_IsNull(network_id) ? strdup(network_id->valuestring) : NULL
        );

    return v1_listing_item_local_var;
end:
    return NULL;

}
