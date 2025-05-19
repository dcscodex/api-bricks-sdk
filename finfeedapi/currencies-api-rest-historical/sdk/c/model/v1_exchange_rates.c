#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_exchange_rates.h"



static v1_exchange_rates_t *v1_exchange_rates_create_internal(
    char *asset_id_base,
    list_t *rates
    ) {
    v1_exchange_rates_t *v1_exchange_rates_local_var = malloc(sizeof(v1_exchange_rates_t));
    if (!v1_exchange_rates_local_var) {
        return NULL;
    }
    v1_exchange_rates_local_var->asset_id_base = asset_id_base;
    v1_exchange_rates_local_var->rates = rates;

    v1_exchange_rates_local_var->_library_owned = 1;
    return v1_exchange_rates_local_var;
}

__attribute__((deprecated)) v1_exchange_rates_t *v1_exchange_rates_create(
    char *asset_id_base,
    list_t *rates
    ) {
    return v1_exchange_rates_create_internal (
        asset_id_base,
        rates
        );
}

void v1_exchange_rates_free(v1_exchange_rates_t *v1_exchange_rates) {
    if(NULL == v1_exchange_rates){
        return ;
    }
    if(v1_exchange_rates->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_exchange_rates_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_exchange_rates->asset_id_base) {
        free(v1_exchange_rates->asset_id_base);
        v1_exchange_rates->asset_id_base = NULL;
    }
    if (v1_exchange_rates->rates) {
        list_ForEach(listEntry, v1_exchange_rates->rates) {
            v1_exchange_rates_rate_free(listEntry->data);
        }
        list_freeList(v1_exchange_rates->rates);
        v1_exchange_rates->rates = NULL;
    }
    free(v1_exchange_rates);
}

cJSON *v1_exchange_rates_convertToJSON(v1_exchange_rates_t *v1_exchange_rates) {
    cJSON *item = cJSON_CreateObject();

    // v1_exchange_rates->asset_id_base
    if(v1_exchange_rates->asset_id_base) {
    if(cJSON_AddStringToObject(item, "asset_id_base", v1_exchange_rates->asset_id_base) == NULL) {
    goto fail; //String
    }
    }


    // v1_exchange_rates->rates
    if(v1_exchange_rates->rates) {
    cJSON *rates = cJSON_AddArrayToObject(item, "rates");
    if(rates == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *ratesListEntry;
    if (v1_exchange_rates->rates) {
    list_ForEach(ratesListEntry, v1_exchange_rates->rates) {
    cJSON *itemLocal = v1_exchange_rates_rate_convertToJSON(ratesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(rates, itemLocal);
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

v1_exchange_rates_t *v1_exchange_rates_parseFromJSON(cJSON *v1_exchange_ratesJSON){

    v1_exchange_rates_t *v1_exchange_rates_local_var = NULL;

    // define the local list for v1_exchange_rates->rates
    list_t *ratesList = NULL;

    // v1_exchange_rates->asset_id_base
    cJSON *asset_id_base = cJSON_GetObjectItemCaseSensitive(v1_exchange_ratesJSON, "asset_id_base");
    if (cJSON_IsNull(asset_id_base)) {
        asset_id_base = NULL;
    }
    if (asset_id_base) { 
    if(!cJSON_IsString(asset_id_base) && !cJSON_IsNull(asset_id_base))
    {
    goto end; //String
    }
    }

    // v1_exchange_rates->rates
    cJSON *rates = cJSON_GetObjectItemCaseSensitive(v1_exchange_ratesJSON, "rates");
    if (cJSON_IsNull(rates)) {
        rates = NULL;
    }
    if (rates) { 
    cJSON *rates_local_nonprimitive = NULL;
    if(!cJSON_IsArray(rates)){
        goto end; //nonprimitive container
    }

    ratesList = list_createList();

    cJSON_ArrayForEach(rates_local_nonprimitive,rates )
    {
        if(!cJSON_IsObject(rates_local_nonprimitive)){
            goto end;
        }
        v1_exchange_rates_rate_t *ratesItem = v1_exchange_rates_rate_parseFromJSON(rates_local_nonprimitive);

        list_addElement(ratesList, ratesItem);
    }
    }


    v1_exchange_rates_local_var = v1_exchange_rates_create_internal (
        asset_id_base && !cJSON_IsNull(asset_id_base) ? strdup(asset_id_base->valuestring) : NULL,
        rates ? ratesList : NULL
        );

    return v1_exchange_rates_local_var;
end:
    if (ratesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, ratesList) {
            v1_exchange_rates_rate_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(ratesList);
        ratesList = NULL;
    }
    return NULL;

}
