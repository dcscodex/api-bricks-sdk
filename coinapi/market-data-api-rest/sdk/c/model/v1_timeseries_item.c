#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_timeseries_item.h"



static v1_timeseries_item_t *v1_timeseries_item_create_internal(
    char *time_period_start,
    char *time_period_end,
    char *time_open,
    char *time_close,
    double price_open,
    double price_high,
    double price_low,
    double price_close,
    double volume_traded,
    long trades_count
    ) {
    v1_timeseries_item_t *v1_timeseries_item_local_var = malloc(sizeof(v1_timeseries_item_t));
    if (!v1_timeseries_item_local_var) {
        return NULL;
    }
    v1_timeseries_item_local_var->time_period_start = time_period_start;
    v1_timeseries_item_local_var->time_period_end = time_period_end;
    v1_timeseries_item_local_var->time_open = time_open;
    v1_timeseries_item_local_var->time_close = time_close;
    v1_timeseries_item_local_var->price_open = price_open;
    v1_timeseries_item_local_var->price_high = price_high;
    v1_timeseries_item_local_var->price_low = price_low;
    v1_timeseries_item_local_var->price_close = price_close;
    v1_timeseries_item_local_var->volume_traded = volume_traded;
    v1_timeseries_item_local_var->trades_count = trades_count;

    v1_timeseries_item_local_var->_library_owned = 1;
    return v1_timeseries_item_local_var;
}

__attribute__((deprecated)) v1_timeseries_item_t *v1_timeseries_item_create(
    char *time_period_start,
    char *time_period_end,
    char *time_open,
    char *time_close,
    double price_open,
    double price_high,
    double price_low,
    double price_close,
    double volume_traded,
    long trades_count
    ) {
    return v1_timeseries_item_create_internal (
        time_period_start,
        time_period_end,
        time_open,
        time_close,
        price_open,
        price_high,
        price_low,
        price_close,
        volume_traded,
        trades_count
        );
}

void v1_timeseries_item_free(v1_timeseries_item_t *v1_timeseries_item) {
    if(NULL == v1_timeseries_item){
        return ;
    }
    if(v1_timeseries_item->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_timeseries_item_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_timeseries_item->time_period_start) {
        free(v1_timeseries_item->time_period_start);
        v1_timeseries_item->time_period_start = NULL;
    }
    if (v1_timeseries_item->time_period_end) {
        free(v1_timeseries_item->time_period_end);
        v1_timeseries_item->time_period_end = NULL;
    }
    if (v1_timeseries_item->time_open) {
        free(v1_timeseries_item->time_open);
        v1_timeseries_item->time_open = NULL;
    }
    if (v1_timeseries_item->time_close) {
        free(v1_timeseries_item->time_close);
        v1_timeseries_item->time_close = NULL;
    }
    free(v1_timeseries_item);
}

cJSON *v1_timeseries_item_convertToJSON(v1_timeseries_item_t *v1_timeseries_item) {
    cJSON *item = cJSON_CreateObject();

    // v1_timeseries_item->time_period_start
    if(v1_timeseries_item->time_period_start) {
    if(cJSON_AddStringToObject(item, "time_period_start", v1_timeseries_item->time_period_start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_timeseries_item->time_period_end
    if(v1_timeseries_item->time_period_end) {
    if(cJSON_AddStringToObject(item, "time_period_end", v1_timeseries_item->time_period_end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_timeseries_item->time_open
    if(v1_timeseries_item->time_open) {
    if(cJSON_AddStringToObject(item, "time_open", v1_timeseries_item->time_open) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_timeseries_item->time_close
    if(v1_timeseries_item->time_close) {
    if(cJSON_AddStringToObject(item, "time_close", v1_timeseries_item->time_close) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_timeseries_item->price_open
    if(v1_timeseries_item->price_open) {
    if(cJSON_AddNumberToObject(item, "price_open", v1_timeseries_item->price_open) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_timeseries_item->price_high
    if(v1_timeseries_item->price_high) {
    if(cJSON_AddNumberToObject(item, "price_high", v1_timeseries_item->price_high) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_timeseries_item->price_low
    if(v1_timeseries_item->price_low) {
    if(cJSON_AddNumberToObject(item, "price_low", v1_timeseries_item->price_low) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_timeseries_item->price_close
    if(v1_timeseries_item->price_close) {
    if(cJSON_AddNumberToObject(item, "price_close", v1_timeseries_item->price_close) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_timeseries_item->volume_traded
    if(v1_timeseries_item->volume_traded) {
    if(cJSON_AddNumberToObject(item, "volume_traded", v1_timeseries_item->volume_traded) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_timeseries_item->trades_count
    if(v1_timeseries_item->trades_count) {
    if(cJSON_AddNumberToObject(item, "trades_count", v1_timeseries_item->trades_count) == NULL) {
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

v1_timeseries_item_t *v1_timeseries_item_parseFromJSON(cJSON *v1_timeseries_itemJSON){

    v1_timeseries_item_t *v1_timeseries_item_local_var = NULL;

    // v1_timeseries_item->time_period_start
    cJSON *time_period_start = cJSON_GetObjectItemCaseSensitive(v1_timeseries_itemJSON, "time_period_start");
    if (cJSON_IsNull(time_period_start)) {
        time_period_start = NULL;
    }
    if (time_period_start) { 
    if(!cJSON_IsString(time_period_start) && !cJSON_IsNull(time_period_start))
    {
    goto end; //DateTime
    }
    }

    // v1_timeseries_item->time_period_end
    cJSON *time_period_end = cJSON_GetObjectItemCaseSensitive(v1_timeseries_itemJSON, "time_period_end");
    if (cJSON_IsNull(time_period_end)) {
        time_period_end = NULL;
    }
    if (time_period_end) { 
    if(!cJSON_IsString(time_period_end) && !cJSON_IsNull(time_period_end))
    {
    goto end; //DateTime
    }
    }

    // v1_timeseries_item->time_open
    cJSON *time_open = cJSON_GetObjectItemCaseSensitive(v1_timeseries_itemJSON, "time_open");
    if (cJSON_IsNull(time_open)) {
        time_open = NULL;
    }
    if (time_open) { 
    if(!cJSON_IsString(time_open) && !cJSON_IsNull(time_open))
    {
    goto end; //DateTime
    }
    }

    // v1_timeseries_item->time_close
    cJSON *time_close = cJSON_GetObjectItemCaseSensitive(v1_timeseries_itemJSON, "time_close");
    if (cJSON_IsNull(time_close)) {
        time_close = NULL;
    }
    if (time_close) { 
    if(!cJSON_IsString(time_close) && !cJSON_IsNull(time_close))
    {
    goto end; //DateTime
    }
    }

    // v1_timeseries_item->price_open
    cJSON *price_open = cJSON_GetObjectItemCaseSensitive(v1_timeseries_itemJSON, "price_open");
    if (cJSON_IsNull(price_open)) {
        price_open = NULL;
    }
    if (price_open) { 
    if(!cJSON_IsNumber(price_open))
    {
    goto end; //Numeric
    }
    }

    // v1_timeseries_item->price_high
    cJSON *price_high = cJSON_GetObjectItemCaseSensitive(v1_timeseries_itemJSON, "price_high");
    if (cJSON_IsNull(price_high)) {
        price_high = NULL;
    }
    if (price_high) { 
    if(!cJSON_IsNumber(price_high))
    {
    goto end; //Numeric
    }
    }

    // v1_timeseries_item->price_low
    cJSON *price_low = cJSON_GetObjectItemCaseSensitive(v1_timeseries_itemJSON, "price_low");
    if (cJSON_IsNull(price_low)) {
        price_low = NULL;
    }
    if (price_low) { 
    if(!cJSON_IsNumber(price_low))
    {
    goto end; //Numeric
    }
    }

    // v1_timeseries_item->price_close
    cJSON *price_close = cJSON_GetObjectItemCaseSensitive(v1_timeseries_itemJSON, "price_close");
    if (cJSON_IsNull(price_close)) {
        price_close = NULL;
    }
    if (price_close) { 
    if(!cJSON_IsNumber(price_close))
    {
    goto end; //Numeric
    }
    }

    // v1_timeseries_item->volume_traded
    cJSON *volume_traded = cJSON_GetObjectItemCaseSensitive(v1_timeseries_itemJSON, "volume_traded");
    if (cJSON_IsNull(volume_traded)) {
        volume_traded = NULL;
    }
    if (volume_traded) { 
    if(!cJSON_IsNumber(volume_traded))
    {
    goto end; //Numeric
    }
    }

    // v1_timeseries_item->trades_count
    cJSON *trades_count = cJSON_GetObjectItemCaseSensitive(v1_timeseries_itemJSON, "trades_count");
    if (cJSON_IsNull(trades_count)) {
        trades_count = NULL;
    }
    if (trades_count) { 
    if(!cJSON_IsNumber(trades_count))
    {
    goto end; //Numeric
    }
    }


    v1_timeseries_item_local_var = v1_timeseries_item_create_internal (
        time_period_start && !cJSON_IsNull(time_period_start) ? strdup(time_period_start->valuestring) : NULL,
        time_period_end && !cJSON_IsNull(time_period_end) ? strdup(time_period_end->valuestring) : NULL,
        time_open && !cJSON_IsNull(time_open) ? strdup(time_open->valuestring) : NULL,
        time_close && !cJSON_IsNull(time_close) ? strdup(time_close->valuestring) : NULL,
        price_open ? price_open->valuedouble : 0,
        price_high ? price_high->valuedouble : 0,
        price_low ? price_low->valuedouble : 0,
        price_close ? price_close->valuedouble : 0,
        volume_traded ? volume_traded->valuedouble : 0,
        trades_count ? trades_count->valuedouble : 0
        );

    return v1_timeseries_item_local_var;
end:
    return NULL;

}
