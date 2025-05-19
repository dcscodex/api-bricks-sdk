#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_exchange_rates_rate.h"



static v1_exchange_rates_rate_t *v1_exchange_rates_rate_create_internal(
    char *time,
    char *asset_id_quote,
    double rate
    ) {
    v1_exchange_rates_rate_t *v1_exchange_rates_rate_local_var = malloc(sizeof(v1_exchange_rates_rate_t));
    if (!v1_exchange_rates_rate_local_var) {
        return NULL;
    }
    v1_exchange_rates_rate_local_var->time = time;
    v1_exchange_rates_rate_local_var->asset_id_quote = asset_id_quote;
    v1_exchange_rates_rate_local_var->rate = rate;

    v1_exchange_rates_rate_local_var->_library_owned = 1;
    return v1_exchange_rates_rate_local_var;
}

__attribute__((deprecated)) v1_exchange_rates_rate_t *v1_exchange_rates_rate_create(
    char *time,
    char *asset_id_quote,
    double rate
    ) {
    return v1_exchange_rates_rate_create_internal (
        time,
        asset_id_quote,
        rate
        );
}

void v1_exchange_rates_rate_free(v1_exchange_rates_rate_t *v1_exchange_rates_rate) {
    if(NULL == v1_exchange_rates_rate){
        return ;
    }
    if(v1_exchange_rates_rate->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_exchange_rates_rate_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_exchange_rates_rate->time) {
        free(v1_exchange_rates_rate->time);
        v1_exchange_rates_rate->time = NULL;
    }
    if (v1_exchange_rates_rate->asset_id_quote) {
        free(v1_exchange_rates_rate->asset_id_quote);
        v1_exchange_rates_rate->asset_id_quote = NULL;
    }
    free(v1_exchange_rates_rate);
}

cJSON *v1_exchange_rates_rate_convertToJSON(v1_exchange_rates_rate_t *v1_exchange_rates_rate) {
    cJSON *item = cJSON_CreateObject();

    // v1_exchange_rates_rate->time
    if(v1_exchange_rates_rate->time) {
    if(cJSON_AddStringToObject(item, "time", v1_exchange_rates_rate->time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_exchange_rates_rate->asset_id_quote
    if(v1_exchange_rates_rate->asset_id_quote) {
    if(cJSON_AddStringToObject(item, "asset_id_quote", v1_exchange_rates_rate->asset_id_quote) == NULL) {
    goto fail; //String
    }
    }


    // v1_exchange_rates_rate->rate
    if(v1_exchange_rates_rate->rate) {
    if(cJSON_AddNumberToObject(item, "rate", v1_exchange_rates_rate->rate) == NULL) {
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

v1_exchange_rates_rate_t *v1_exchange_rates_rate_parseFromJSON(cJSON *v1_exchange_rates_rateJSON){

    v1_exchange_rates_rate_t *v1_exchange_rates_rate_local_var = NULL;

    // v1_exchange_rates_rate->time
    cJSON *time = cJSON_GetObjectItemCaseSensitive(v1_exchange_rates_rateJSON, "time");
    if (cJSON_IsNull(time)) {
        time = NULL;
    }
    if (time) { 
    if(!cJSON_IsString(time) && !cJSON_IsNull(time))
    {
    goto end; //DateTime
    }
    }

    // v1_exchange_rates_rate->asset_id_quote
    cJSON *asset_id_quote = cJSON_GetObjectItemCaseSensitive(v1_exchange_rates_rateJSON, "asset_id_quote");
    if (cJSON_IsNull(asset_id_quote)) {
        asset_id_quote = NULL;
    }
    if (asset_id_quote) { 
    if(!cJSON_IsString(asset_id_quote) && !cJSON_IsNull(asset_id_quote))
    {
    goto end; //String
    }
    }

    // v1_exchange_rates_rate->rate
    cJSON *rate = cJSON_GetObjectItemCaseSensitive(v1_exchange_rates_rateJSON, "rate");
    if (cJSON_IsNull(rate)) {
        rate = NULL;
    }
    if (rate) { 
    if(!cJSON_IsNumber(rate))
    {
    goto end; //Numeric
    }
    }


    v1_exchange_rates_rate_local_var = v1_exchange_rates_rate_create_internal (
        time && !cJSON_IsNull(time) ? strdup(time->valuestring) : NULL,
        asset_id_quote && !cJSON_IsNull(asset_id_quote) ? strdup(asset_id_quote->valuestring) : NULL,
        rate ? rate->valuedouble : 0
        );

    return v1_exchange_rates_rate_local_var;
end:
    return NULL;

}
