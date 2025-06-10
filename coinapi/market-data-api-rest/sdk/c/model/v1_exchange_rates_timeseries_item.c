#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_exchange_rates_timeseries_item.h"



static v1_exchange_rates_timeseries_item_t *v1_exchange_rates_timeseries_item_create_internal(
    char *time_period_start,
    char *time_period_end,
    char *time_open,
    char *time_close,
    double rate_open,
    double rate_high,
    double rate_low,
    double rate_close
    ) {
    v1_exchange_rates_timeseries_item_t *v1_exchange_rates_timeseries_item_local_var = malloc(sizeof(v1_exchange_rates_timeseries_item_t));
    if (!v1_exchange_rates_timeseries_item_local_var) {
        return NULL;
    }
    v1_exchange_rates_timeseries_item_local_var->time_period_start = time_period_start;
    v1_exchange_rates_timeseries_item_local_var->time_period_end = time_period_end;
    v1_exchange_rates_timeseries_item_local_var->time_open = time_open;
    v1_exchange_rates_timeseries_item_local_var->time_close = time_close;
    v1_exchange_rates_timeseries_item_local_var->rate_open = rate_open;
    v1_exchange_rates_timeseries_item_local_var->rate_high = rate_high;
    v1_exchange_rates_timeseries_item_local_var->rate_low = rate_low;
    v1_exchange_rates_timeseries_item_local_var->rate_close = rate_close;

    v1_exchange_rates_timeseries_item_local_var->_library_owned = 1;
    return v1_exchange_rates_timeseries_item_local_var;
}

__attribute__((deprecated)) v1_exchange_rates_timeseries_item_t *v1_exchange_rates_timeseries_item_create(
    char *time_period_start,
    char *time_period_end,
    char *time_open,
    char *time_close,
    double rate_open,
    double rate_high,
    double rate_low,
    double rate_close
    ) {
    return v1_exchange_rates_timeseries_item_create_internal (
        time_period_start,
        time_period_end,
        time_open,
        time_close,
        rate_open,
        rate_high,
        rate_low,
        rate_close
        );
}

void v1_exchange_rates_timeseries_item_free(v1_exchange_rates_timeseries_item_t *v1_exchange_rates_timeseries_item) {
    if(NULL == v1_exchange_rates_timeseries_item){
        return ;
    }
    if(v1_exchange_rates_timeseries_item->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_exchange_rates_timeseries_item_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_exchange_rates_timeseries_item->time_period_start) {
        free(v1_exchange_rates_timeseries_item->time_period_start);
        v1_exchange_rates_timeseries_item->time_period_start = NULL;
    }
    if (v1_exchange_rates_timeseries_item->time_period_end) {
        free(v1_exchange_rates_timeseries_item->time_period_end);
        v1_exchange_rates_timeseries_item->time_period_end = NULL;
    }
    if (v1_exchange_rates_timeseries_item->time_open) {
        free(v1_exchange_rates_timeseries_item->time_open);
        v1_exchange_rates_timeseries_item->time_open = NULL;
    }
    if (v1_exchange_rates_timeseries_item->time_close) {
        free(v1_exchange_rates_timeseries_item->time_close);
        v1_exchange_rates_timeseries_item->time_close = NULL;
    }
    free(v1_exchange_rates_timeseries_item);
}

cJSON *v1_exchange_rates_timeseries_item_convertToJSON(v1_exchange_rates_timeseries_item_t *v1_exchange_rates_timeseries_item) {
    cJSON *item = cJSON_CreateObject();

    // v1_exchange_rates_timeseries_item->time_period_start
    if(v1_exchange_rates_timeseries_item->time_period_start) {
    if(cJSON_AddStringToObject(item, "time_period_start", v1_exchange_rates_timeseries_item->time_period_start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_exchange_rates_timeseries_item->time_period_end
    if(v1_exchange_rates_timeseries_item->time_period_end) {
    if(cJSON_AddStringToObject(item, "time_period_end", v1_exchange_rates_timeseries_item->time_period_end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_exchange_rates_timeseries_item->time_open
    if(v1_exchange_rates_timeseries_item->time_open) {
    if(cJSON_AddStringToObject(item, "time_open", v1_exchange_rates_timeseries_item->time_open) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_exchange_rates_timeseries_item->time_close
    if(v1_exchange_rates_timeseries_item->time_close) {
    if(cJSON_AddStringToObject(item, "time_close", v1_exchange_rates_timeseries_item->time_close) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_exchange_rates_timeseries_item->rate_open
    if(v1_exchange_rates_timeseries_item->rate_open) {
    if(cJSON_AddNumberToObject(item, "rate_open", v1_exchange_rates_timeseries_item->rate_open) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_exchange_rates_timeseries_item->rate_high
    if(v1_exchange_rates_timeseries_item->rate_high) {
    if(cJSON_AddNumberToObject(item, "rate_high", v1_exchange_rates_timeseries_item->rate_high) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_exchange_rates_timeseries_item->rate_low
    if(v1_exchange_rates_timeseries_item->rate_low) {
    if(cJSON_AddNumberToObject(item, "rate_low", v1_exchange_rates_timeseries_item->rate_low) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_exchange_rates_timeseries_item->rate_close
    if(v1_exchange_rates_timeseries_item->rate_close) {
    if(cJSON_AddNumberToObject(item, "rate_close", v1_exchange_rates_timeseries_item->rate_close) == NULL) {
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

v1_exchange_rates_timeseries_item_t *v1_exchange_rates_timeseries_item_parseFromJSON(cJSON *v1_exchange_rates_timeseries_itemJSON){

    v1_exchange_rates_timeseries_item_t *v1_exchange_rates_timeseries_item_local_var = NULL;

    // v1_exchange_rates_timeseries_item->time_period_start
    cJSON *time_period_start = cJSON_GetObjectItemCaseSensitive(v1_exchange_rates_timeseries_itemJSON, "time_period_start");
    if (cJSON_IsNull(time_period_start)) {
        time_period_start = NULL;
    }
    if (time_period_start) { 
    if(!cJSON_IsString(time_period_start) && !cJSON_IsNull(time_period_start))
    {
    goto end; //DateTime
    }
    }

    // v1_exchange_rates_timeseries_item->time_period_end
    cJSON *time_period_end = cJSON_GetObjectItemCaseSensitive(v1_exchange_rates_timeseries_itemJSON, "time_period_end");
    if (cJSON_IsNull(time_period_end)) {
        time_period_end = NULL;
    }
    if (time_period_end) { 
    if(!cJSON_IsString(time_period_end) && !cJSON_IsNull(time_period_end))
    {
    goto end; //DateTime
    }
    }

    // v1_exchange_rates_timeseries_item->time_open
    cJSON *time_open = cJSON_GetObjectItemCaseSensitive(v1_exchange_rates_timeseries_itemJSON, "time_open");
    if (cJSON_IsNull(time_open)) {
        time_open = NULL;
    }
    if (time_open) { 
    if(!cJSON_IsString(time_open) && !cJSON_IsNull(time_open))
    {
    goto end; //DateTime
    }
    }

    // v1_exchange_rates_timeseries_item->time_close
    cJSON *time_close = cJSON_GetObjectItemCaseSensitive(v1_exchange_rates_timeseries_itemJSON, "time_close");
    if (cJSON_IsNull(time_close)) {
        time_close = NULL;
    }
    if (time_close) { 
    if(!cJSON_IsString(time_close) && !cJSON_IsNull(time_close))
    {
    goto end; //DateTime
    }
    }

    // v1_exchange_rates_timeseries_item->rate_open
    cJSON *rate_open = cJSON_GetObjectItemCaseSensitive(v1_exchange_rates_timeseries_itemJSON, "rate_open");
    if (cJSON_IsNull(rate_open)) {
        rate_open = NULL;
    }
    if (rate_open) { 
    if(!cJSON_IsNumber(rate_open))
    {
    goto end; //Numeric
    }
    }

    // v1_exchange_rates_timeseries_item->rate_high
    cJSON *rate_high = cJSON_GetObjectItemCaseSensitive(v1_exchange_rates_timeseries_itemJSON, "rate_high");
    if (cJSON_IsNull(rate_high)) {
        rate_high = NULL;
    }
    if (rate_high) { 
    if(!cJSON_IsNumber(rate_high))
    {
    goto end; //Numeric
    }
    }

    // v1_exchange_rates_timeseries_item->rate_low
    cJSON *rate_low = cJSON_GetObjectItemCaseSensitive(v1_exchange_rates_timeseries_itemJSON, "rate_low");
    if (cJSON_IsNull(rate_low)) {
        rate_low = NULL;
    }
    if (rate_low) { 
    if(!cJSON_IsNumber(rate_low))
    {
    goto end; //Numeric
    }
    }

    // v1_exchange_rates_timeseries_item->rate_close
    cJSON *rate_close = cJSON_GetObjectItemCaseSensitive(v1_exchange_rates_timeseries_itemJSON, "rate_close");
    if (cJSON_IsNull(rate_close)) {
        rate_close = NULL;
    }
    if (rate_close) { 
    if(!cJSON_IsNumber(rate_close))
    {
    goto end; //Numeric
    }
    }


    v1_exchange_rates_timeseries_item_local_var = v1_exchange_rates_timeseries_item_create_internal (
        time_period_start && !cJSON_IsNull(time_period_start) ? strdup(time_period_start->valuestring) : NULL,
        time_period_end && !cJSON_IsNull(time_period_end) ? strdup(time_period_end->valuestring) : NULL,
        time_open && !cJSON_IsNull(time_open) ? strdup(time_open->valuestring) : NULL,
        time_close && !cJSON_IsNull(time_close) ? strdup(time_close->valuestring) : NULL,
        rate_open ? rate_open->valuedouble : 0,
        rate_high ? rate_high->valuedouble : 0,
        rate_low ? rate_low->valuedouble : 0,
        rate_close ? rate_close->valuedouble : 0
        );

    return v1_exchange_rates_timeseries_item_local_var;
end:
    return NULL;

}
