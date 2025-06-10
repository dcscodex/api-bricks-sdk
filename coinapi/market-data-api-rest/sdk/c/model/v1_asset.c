#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_asset.h"



static v1_asset_t *v1_asset_create_internal(
    char *asset_id,
    char *name,
    int type_is_crypto,
    char *data_quote_start,
    char *data_quote_end,
    char *data_orderbook_start,
    char *data_orderbook_end,
    char *data_trade_start,
    char *data_trade_end,
    long data_symbols_count,
    double volume_1hrs_usd,
    double volume_1day_usd,
    double volume_1mth_usd,
    double price_usd,
    char *id_icon,
    double supply_current,
    double supply_total,
    double supply_max,
    list_t *chain_addresses,
    char *data_start,
    char *data_end
    ) {
    v1_asset_t *v1_asset_local_var = malloc(sizeof(v1_asset_t));
    if (!v1_asset_local_var) {
        return NULL;
    }
    v1_asset_local_var->asset_id = asset_id;
    v1_asset_local_var->name = name;
    v1_asset_local_var->type_is_crypto = type_is_crypto;
    v1_asset_local_var->data_quote_start = data_quote_start;
    v1_asset_local_var->data_quote_end = data_quote_end;
    v1_asset_local_var->data_orderbook_start = data_orderbook_start;
    v1_asset_local_var->data_orderbook_end = data_orderbook_end;
    v1_asset_local_var->data_trade_start = data_trade_start;
    v1_asset_local_var->data_trade_end = data_trade_end;
    v1_asset_local_var->data_symbols_count = data_symbols_count;
    v1_asset_local_var->volume_1hrs_usd = volume_1hrs_usd;
    v1_asset_local_var->volume_1day_usd = volume_1day_usd;
    v1_asset_local_var->volume_1mth_usd = volume_1mth_usd;
    v1_asset_local_var->price_usd = price_usd;
    v1_asset_local_var->id_icon = id_icon;
    v1_asset_local_var->supply_current = supply_current;
    v1_asset_local_var->supply_total = supply_total;
    v1_asset_local_var->supply_max = supply_max;
    v1_asset_local_var->chain_addresses = chain_addresses;
    v1_asset_local_var->data_start = data_start;
    v1_asset_local_var->data_end = data_end;

    v1_asset_local_var->_library_owned = 1;
    return v1_asset_local_var;
}

__attribute__((deprecated)) v1_asset_t *v1_asset_create(
    char *asset_id,
    char *name,
    int type_is_crypto,
    char *data_quote_start,
    char *data_quote_end,
    char *data_orderbook_start,
    char *data_orderbook_end,
    char *data_trade_start,
    char *data_trade_end,
    long data_symbols_count,
    double volume_1hrs_usd,
    double volume_1day_usd,
    double volume_1mth_usd,
    double price_usd,
    char *id_icon,
    double supply_current,
    double supply_total,
    double supply_max,
    list_t *chain_addresses,
    char *data_start,
    char *data_end
    ) {
    return v1_asset_create_internal (
        asset_id,
        name,
        type_is_crypto,
        data_quote_start,
        data_quote_end,
        data_orderbook_start,
        data_orderbook_end,
        data_trade_start,
        data_trade_end,
        data_symbols_count,
        volume_1hrs_usd,
        volume_1day_usd,
        volume_1mth_usd,
        price_usd,
        id_icon,
        supply_current,
        supply_total,
        supply_max,
        chain_addresses,
        data_start,
        data_end
        );
}

void v1_asset_free(v1_asset_t *v1_asset) {
    if(NULL == v1_asset){
        return ;
    }
    if(v1_asset->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_asset_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_asset->asset_id) {
        free(v1_asset->asset_id);
        v1_asset->asset_id = NULL;
    }
    if (v1_asset->name) {
        free(v1_asset->name);
        v1_asset->name = NULL;
    }
    if (v1_asset->data_quote_start) {
        free(v1_asset->data_quote_start);
        v1_asset->data_quote_start = NULL;
    }
    if (v1_asset->data_quote_end) {
        free(v1_asset->data_quote_end);
        v1_asset->data_quote_end = NULL;
    }
    if (v1_asset->data_orderbook_start) {
        free(v1_asset->data_orderbook_start);
        v1_asset->data_orderbook_start = NULL;
    }
    if (v1_asset->data_orderbook_end) {
        free(v1_asset->data_orderbook_end);
        v1_asset->data_orderbook_end = NULL;
    }
    if (v1_asset->data_trade_start) {
        free(v1_asset->data_trade_start);
        v1_asset->data_trade_start = NULL;
    }
    if (v1_asset->data_trade_end) {
        free(v1_asset->data_trade_end);
        v1_asset->data_trade_end = NULL;
    }
    if (v1_asset->id_icon) {
        free(v1_asset->id_icon);
        v1_asset->id_icon = NULL;
    }
    if (v1_asset->chain_addresses) {
        list_ForEach(listEntry, v1_asset->chain_addresses) {
            v1_chain_network_address_free(listEntry->data);
        }
        list_freeList(v1_asset->chain_addresses);
        v1_asset->chain_addresses = NULL;
    }
    if (v1_asset->data_start) {
        free(v1_asset->data_start);
        v1_asset->data_start = NULL;
    }
    if (v1_asset->data_end) {
        free(v1_asset->data_end);
        v1_asset->data_end = NULL;
    }
    free(v1_asset);
}

cJSON *v1_asset_convertToJSON(v1_asset_t *v1_asset) {
    cJSON *item = cJSON_CreateObject();

    // v1_asset->asset_id
    if(v1_asset->asset_id) {
    if(cJSON_AddStringToObject(item, "asset_id", v1_asset->asset_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_asset->name
    if(v1_asset->name) {
    if(cJSON_AddStringToObject(item, "name", v1_asset->name) == NULL) {
    goto fail; //String
    }
    }


    // v1_asset->type_is_crypto
    if(v1_asset->type_is_crypto) {
    if(cJSON_AddNumberToObject(item, "type_is_crypto", v1_asset->type_is_crypto) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_asset->data_quote_start
    if(v1_asset->data_quote_start) {
    if(cJSON_AddStringToObject(item, "data_quote_start", v1_asset->data_quote_start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_asset->data_quote_end
    if(v1_asset->data_quote_end) {
    if(cJSON_AddStringToObject(item, "data_quote_end", v1_asset->data_quote_end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_asset->data_orderbook_start
    if(v1_asset->data_orderbook_start) {
    if(cJSON_AddStringToObject(item, "data_orderbook_start", v1_asset->data_orderbook_start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_asset->data_orderbook_end
    if(v1_asset->data_orderbook_end) {
    if(cJSON_AddStringToObject(item, "data_orderbook_end", v1_asset->data_orderbook_end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_asset->data_trade_start
    if(v1_asset->data_trade_start) {
    if(cJSON_AddStringToObject(item, "data_trade_start", v1_asset->data_trade_start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_asset->data_trade_end
    if(v1_asset->data_trade_end) {
    if(cJSON_AddStringToObject(item, "data_trade_end", v1_asset->data_trade_end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_asset->data_symbols_count
    if(v1_asset->data_symbols_count) {
    if(cJSON_AddNumberToObject(item, "data_symbols_count", v1_asset->data_symbols_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_asset->volume_1hrs_usd
    if(v1_asset->volume_1hrs_usd) {
    if(cJSON_AddNumberToObject(item, "volume_1hrs_usd", v1_asset->volume_1hrs_usd) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_asset->volume_1day_usd
    if(v1_asset->volume_1day_usd) {
    if(cJSON_AddNumberToObject(item, "volume_1day_usd", v1_asset->volume_1day_usd) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_asset->volume_1mth_usd
    if(v1_asset->volume_1mth_usd) {
    if(cJSON_AddNumberToObject(item, "volume_1mth_usd", v1_asset->volume_1mth_usd) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_asset->price_usd
    if(v1_asset->price_usd) {
    if(cJSON_AddNumberToObject(item, "price_usd", v1_asset->price_usd) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_asset->id_icon
    if(v1_asset->id_icon) {
    if(cJSON_AddStringToObject(item, "id_icon", v1_asset->id_icon) == NULL) {
    goto fail; //String
    }
    }


    // v1_asset->supply_current
    if(v1_asset->supply_current) {
    if(cJSON_AddNumberToObject(item, "supply_current", v1_asset->supply_current) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_asset->supply_total
    if(v1_asset->supply_total) {
    if(cJSON_AddNumberToObject(item, "supply_total", v1_asset->supply_total) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_asset->supply_max
    if(v1_asset->supply_max) {
    if(cJSON_AddNumberToObject(item, "supply_max", v1_asset->supply_max) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_asset->chain_addresses
    if(v1_asset->chain_addresses) {
    cJSON *chain_addresses = cJSON_AddArrayToObject(item, "chain_addresses");
    if(chain_addresses == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *chain_addressesListEntry;
    if (v1_asset->chain_addresses) {
    list_ForEach(chain_addressesListEntry, v1_asset->chain_addresses) {
    cJSON *itemLocal = v1_chain_network_address_convertToJSON(chain_addressesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(chain_addresses, itemLocal);
    }
    }
    }


    // v1_asset->data_start
    if(v1_asset->data_start) {
    if(cJSON_AddStringToObject(item, "data_start", v1_asset->data_start) == NULL) {
    goto fail; //String
    }
    }


    // v1_asset->data_end
    if(v1_asset->data_end) {
    if(cJSON_AddStringToObject(item, "data_end", v1_asset->data_end) == NULL) {
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

v1_asset_t *v1_asset_parseFromJSON(cJSON *v1_assetJSON){

    v1_asset_t *v1_asset_local_var = NULL;

    // define the local list for v1_asset->chain_addresses
    list_t *chain_addressesList = NULL;

    // v1_asset->asset_id
    cJSON *asset_id = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "asset_id");
    if (cJSON_IsNull(asset_id)) {
        asset_id = NULL;
    }
    if (asset_id) { 
    if(!cJSON_IsString(asset_id) && !cJSON_IsNull(asset_id))
    {
    goto end; //String
    }
    }

    // v1_asset->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // v1_asset->type_is_crypto
    cJSON *type_is_crypto = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "type_is_crypto");
    if (cJSON_IsNull(type_is_crypto)) {
        type_is_crypto = NULL;
    }
    if (type_is_crypto) { 
    if(!cJSON_IsNumber(type_is_crypto))
    {
    goto end; //Numeric
    }
    }

    // v1_asset->data_quote_start
    cJSON *data_quote_start = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "data_quote_start");
    if (cJSON_IsNull(data_quote_start)) {
        data_quote_start = NULL;
    }
    if (data_quote_start) { 
    if(!cJSON_IsString(data_quote_start) && !cJSON_IsNull(data_quote_start))
    {
    goto end; //DateTime
    }
    }

    // v1_asset->data_quote_end
    cJSON *data_quote_end = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "data_quote_end");
    if (cJSON_IsNull(data_quote_end)) {
        data_quote_end = NULL;
    }
    if (data_quote_end) { 
    if(!cJSON_IsString(data_quote_end) && !cJSON_IsNull(data_quote_end))
    {
    goto end; //DateTime
    }
    }

    // v1_asset->data_orderbook_start
    cJSON *data_orderbook_start = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "data_orderbook_start");
    if (cJSON_IsNull(data_orderbook_start)) {
        data_orderbook_start = NULL;
    }
    if (data_orderbook_start) { 
    if(!cJSON_IsString(data_orderbook_start) && !cJSON_IsNull(data_orderbook_start))
    {
    goto end; //DateTime
    }
    }

    // v1_asset->data_orderbook_end
    cJSON *data_orderbook_end = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "data_orderbook_end");
    if (cJSON_IsNull(data_orderbook_end)) {
        data_orderbook_end = NULL;
    }
    if (data_orderbook_end) { 
    if(!cJSON_IsString(data_orderbook_end) && !cJSON_IsNull(data_orderbook_end))
    {
    goto end; //DateTime
    }
    }

    // v1_asset->data_trade_start
    cJSON *data_trade_start = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "data_trade_start");
    if (cJSON_IsNull(data_trade_start)) {
        data_trade_start = NULL;
    }
    if (data_trade_start) { 
    if(!cJSON_IsString(data_trade_start) && !cJSON_IsNull(data_trade_start))
    {
    goto end; //DateTime
    }
    }

    // v1_asset->data_trade_end
    cJSON *data_trade_end = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "data_trade_end");
    if (cJSON_IsNull(data_trade_end)) {
        data_trade_end = NULL;
    }
    if (data_trade_end) { 
    if(!cJSON_IsString(data_trade_end) && !cJSON_IsNull(data_trade_end))
    {
    goto end; //DateTime
    }
    }

    // v1_asset->data_symbols_count
    cJSON *data_symbols_count = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "data_symbols_count");
    if (cJSON_IsNull(data_symbols_count)) {
        data_symbols_count = NULL;
    }
    if (data_symbols_count) { 
    if(!cJSON_IsNumber(data_symbols_count))
    {
    goto end; //Numeric
    }
    }

    // v1_asset->volume_1hrs_usd
    cJSON *volume_1hrs_usd = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "volume_1hrs_usd");
    if (cJSON_IsNull(volume_1hrs_usd)) {
        volume_1hrs_usd = NULL;
    }
    if (volume_1hrs_usd) { 
    if(!cJSON_IsNumber(volume_1hrs_usd))
    {
    goto end; //Numeric
    }
    }

    // v1_asset->volume_1day_usd
    cJSON *volume_1day_usd = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "volume_1day_usd");
    if (cJSON_IsNull(volume_1day_usd)) {
        volume_1day_usd = NULL;
    }
    if (volume_1day_usd) { 
    if(!cJSON_IsNumber(volume_1day_usd))
    {
    goto end; //Numeric
    }
    }

    // v1_asset->volume_1mth_usd
    cJSON *volume_1mth_usd = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "volume_1mth_usd");
    if (cJSON_IsNull(volume_1mth_usd)) {
        volume_1mth_usd = NULL;
    }
    if (volume_1mth_usd) { 
    if(!cJSON_IsNumber(volume_1mth_usd))
    {
    goto end; //Numeric
    }
    }

    // v1_asset->price_usd
    cJSON *price_usd = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "price_usd");
    if (cJSON_IsNull(price_usd)) {
        price_usd = NULL;
    }
    if (price_usd) { 
    if(!cJSON_IsNumber(price_usd))
    {
    goto end; //Numeric
    }
    }

    // v1_asset->id_icon
    cJSON *id_icon = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "id_icon");
    if (cJSON_IsNull(id_icon)) {
        id_icon = NULL;
    }
    if (id_icon) { 
    if(!cJSON_IsString(id_icon) && !cJSON_IsNull(id_icon))
    {
    goto end; //String
    }
    }

    // v1_asset->supply_current
    cJSON *supply_current = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "supply_current");
    if (cJSON_IsNull(supply_current)) {
        supply_current = NULL;
    }
    if (supply_current) { 
    if(!cJSON_IsNumber(supply_current))
    {
    goto end; //Numeric
    }
    }

    // v1_asset->supply_total
    cJSON *supply_total = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "supply_total");
    if (cJSON_IsNull(supply_total)) {
        supply_total = NULL;
    }
    if (supply_total) { 
    if(!cJSON_IsNumber(supply_total))
    {
    goto end; //Numeric
    }
    }

    // v1_asset->supply_max
    cJSON *supply_max = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "supply_max");
    if (cJSON_IsNull(supply_max)) {
        supply_max = NULL;
    }
    if (supply_max) { 
    if(!cJSON_IsNumber(supply_max))
    {
    goto end; //Numeric
    }
    }

    // v1_asset->chain_addresses
    cJSON *chain_addresses = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "chain_addresses");
    if (cJSON_IsNull(chain_addresses)) {
        chain_addresses = NULL;
    }
    if (chain_addresses) { 
    cJSON *chain_addresses_local_nonprimitive = NULL;
    if(!cJSON_IsArray(chain_addresses)){
        goto end; //nonprimitive container
    }

    chain_addressesList = list_createList();

    cJSON_ArrayForEach(chain_addresses_local_nonprimitive,chain_addresses )
    {
        if(!cJSON_IsObject(chain_addresses_local_nonprimitive)){
            goto end;
        }
        v1_chain_network_address_t *chain_addressesItem = v1_chain_network_address_parseFromJSON(chain_addresses_local_nonprimitive);

        list_addElement(chain_addressesList, chain_addressesItem);
    }
    }

    // v1_asset->data_start
    cJSON *data_start = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "data_start");
    if (cJSON_IsNull(data_start)) {
        data_start = NULL;
    }
    if (data_start) { 
    if(!cJSON_IsString(data_start) && !cJSON_IsNull(data_start))
    {
    goto end; //String
    }
    }

    // v1_asset->data_end
    cJSON *data_end = cJSON_GetObjectItemCaseSensitive(v1_assetJSON, "data_end");
    if (cJSON_IsNull(data_end)) {
        data_end = NULL;
    }
    if (data_end) { 
    if(!cJSON_IsString(data_end) && !cJSON_IsNull(data_end))
    {
    goto end; //String
    }
    }


    v1_asset_local_var = v1_asset_create_internal (
        asset_id && !cJSON_IsNull(asset_id) ? strdup(asset_id->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        type_is_crypto ? type_is_crypto->valuedouble : 0,
        data_quote_start && !cJSON_IsNull(data_quote_start) ? strdup(data_quote_start->valuestring) : NULL,
        data_quote_end && !cJSON_IsNull(data_quote_end) ? strdup(data_quote_end->valuestring) : NULL,
        data_orderbook_start && !cJSON_IsNull(data_orderbook_start) ? strdup(data_orderbook_start->valuestring) : NULL,
        data_orderbook_end && !cJSON_IsNull(data_orderbook_end) ? strdup(data_orderbook_end->valuestring) : NULL,
        data_trade_start && !cJSON_IsNull(data_trade_start) ? strdup(data_trade_start->valuestring) : NULL,
        data_trade_end && !cJSON_IsNull(data_trade_end) ? strdup(data_trade_end->valuestring) : NULL,
        data_symbols_count ? data_symbols_count->valuedouble : 0,
        volume_1hrs_usd ? volume_1hrs_usd->valuedouble : 0,
        volume_1day_usd ? volume_1day_usd->valuedouble : 0,
        volume_1mth_usd ? volume_1mth_usd->valuedouble : 0,
        price_usd ? price_usd->valuedouble : 0,
        id_icon && !cJSON_IsNull(id_icon) ? strdup(id_icon->valuestring) : NULL,
        supply_current ? supply_current->valuedouble : 0,
        supply_total ? supply_total->valuedouble : 0,
        supply_max ? supply_max->valuedouble : 0,
        chain_addresses ? chain_addressesList : NULL,
        data_start && !cJSON_IsNull(data_start) ? strdup(data_start->valuestring) : NULL,
        data_end && !cJSON_IsNull(data_end) ? strdup(data_end->valuestring) : NULL
        );

    return v1_asset_local_var;
end:
    if (chain_addressesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, chain_addressesList) {
            v1_chain_network_address_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(chain_addressesList);
        chain_addressesList = NULL;
    }
    return NULL;

}
