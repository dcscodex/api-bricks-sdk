#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ohlcv_exchange_timeseries_item.h"



static ohlcv_exchange_timeseries_item_t *ohlcv_exchange_timeseries_item_create_internal(
    char *time_period_start,
    char *time_period_end,
    char *time_open,
    char *time_close,
    double price_open,
    double price_high,
    double price_low,
    double price_close,
    double volume_traded,
    long trades_count,
    char *symbol_id_exchange
    ) {
    ohlcv_exchange_timeseries_item_t *ohlcv_exchange_timeseries_item_local_var = malloc(sizeof(ohlcv_exchange_timeseries_item_t));
    if (!ohlcv_exchange_timeseries_item_local_var) {
        return NULL;
    }
    ohlcv_exchange_timeseries_item_local_var->time_period_start = time_period_start;
    ohlcv_exchange_timeseries_item_local_var->time_period_end = time_period_end;
    ohlcv_exchange_timeseries_item_local_var->time_open = time_open;
    ohlcv_exchange_timeseries_item_local_var->time_close = time_close;
    ohlcv_exchange_timeseries_item_local_var->price_open = price_open;
    ohlcv_exchange_timeseries_item_local_var->price_high = price_high;
    ohlcv_exchange_timeseries_item_local_var->price_low = price_low;
    ohlcv_exchange_timeseries_item_local_var->price_close = price_close;
    ohlcv_exchange_timeseries_item_local_var->volume_traded = volume_traded;
    ohlcv_exchange_timeseries_item_local_var->trades_count = trades_count;
    ohlcv_exchange_timeseries_item_local_var->symbol_id_exchange = symbol_id_exchange;

    ohlcv_exchange_timeseries_item_local_var->_library_owned = 1;
    return ohlcv_exchange_timeseries_item_local_var;
}

__attribute__((deprecated)) ohlcv_exchange_timeseries_item_t *ohlcv_exchange_timeseries_item_create(
    char *time_period_start,
    char *time_period_end,
    char *time_open,
    char *time_close,
    double price_open,
    double price_high,
    double price_low,
    double price_close,
    double volume_traded,
    long trades_count,
    char *symbol_id_exchange
    ) {
    return ohlcv_exchange_timeseries_item_create_internal (
        time_period_start,
        time_period_end,
        time_open,
        time_close,
        price_open,
        price_high,
        price_low,
        price_close,
        volume_traded,
        trades_count,
        symbol_id_exchange
        );
}

void ohlcv_exchange_timeseries_item_free(ohlcv_exchange_timeseries_item_t *ohlcv_exchange_timeseries_item) {
    if(NULL == ohlcv_exchange_timeseries_item){
        return ;
    }
    if(ohlcv_exchange_timeseries_item->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ohlcv_exchange_timeseries_item_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ohlcv_exchange_timeseries_item->time_period_start) {
        free(ohlcv_exchange_timeseries_item->time_period_start);
        ohlcv_exchange_timeseries_item->time_period_start = NULL;
    }
    if (ohlcv_exchange_timeseries_item->time_period_end) {
        free(ohlcv_exchange_timeseries_item->time_period_end);
        ohlcv_exchange_timeseries_item->time_period_end = NULL;
    }
    if (ohlcv_exchange_timeseries_item->time_open) {
        free(ohlcv_exchange_timeseries_item->time_open);
        ohlcv_exchange_timeseries_item->time_open = NULL;
    }
    if (ohlcv_exchange_timeseries_item->time_close) {
        free(ohlcv_exchange_timeseries_item->time_close);
        ohlcv_exchange_timeseries_item->time_close = NULL;
    }
    if (ohlcv_exchange_timeseries_item->symbol_id_exchange) {
        free(ohlcv_exchange_timeseries_item->symbol_id_exchange);
        ohlcv_exchange_timeseries_item->symbol_id_exchange = NULL;
    }
    free(ohlcv_exchange_timeseries_item);
}

cJSON *ohlcv_exchange_timeseries_item_convertToJSON(ohlcv_exchange_timeseries_item_t *ohlcv_exchange_timeseries_item) {
    cJSON *item = cJSON_CreateObject();

    // ohlcv_exchange_timeseries_item->time_period_start
    if(ohlcv_exchange_timeseries_item->time_period_start) {
    if(cJSON_AddStringToObject(item, "time_period_start", ohlcv_exchange_timeseries_item->time_period_start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // ohlcv_exchange_timeseries_item->time_period_end
    if(ohlcv_exchange_timeseries_item->time_period_end) {
    if(cJSON_AddStringToObject(item, "time_period_end", ohlcv_exchange_timeseries_item->time_period_end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // ohlcv_exchange_timeseries_item->time_open
    if(ohlcv_exchange_timeseries_item->time_open) {
    if(cJSON_AddStringToObject(item, "time_open", ohlcv_exchange_timeseries_item->time_open) == NULL) {
    goto fail; //Date-Time
    }
    }


    // ohlcv_exchange_timeseries_item->time_close
    if(ohlcv_exchange_timeseries_item->time_close) {
    if(cJSON_AddStringToObject(item, "time_close", ohlcv_exchange_timeseries_item->time_close) == NULL) {
    goto fail; //Date-Time
    }
    }


    // ohlcv_exchange_timeseries_item->price_open
    if(ohlcv_exchange_timeseries_item->price_open) {
    if(cJSON_AddNumberToObject(item, "price_open", ohlcv_exchange_timeseries_item->price_open) == NULL) {
    goto fail; //Numeric
    }
    }


    // ohlcv_exchange_timeseries_item->price_high
    if(ohlcv_exchange_timeseries_item->price_high) {
    if(cJSON_AddNumberToObject(item, "price_high", ohlcv_exchange_timeseries_item->price_high) == NULL) {
    goto fail; //Numeric
    }
    }


    // ohlcv_exchange_timeseries_item->price_low
    if(ohlcv_exchange_timeseries_item->price_low) {
    if(cJSON_AddNumberToObject(item, "price_low", ohlcv_exchange_timeseries_item->price_low) == NULL) {
    goto fail; //Numeric
    }
    }


    // ohlcv_exchange_timeseries_item->price_close
    if(ohlcv_exchange_timeseries_item->price_close) {
    if(cJSON_AddNumberToObject(item, "price_close", ohlcv_exchange_timeseries_item->price_close) == NULL) {
    goto fail; //Numeric
    }
    }


    // ohlcv_exchange_timeseries_item->volume_traded
    if(ohlcv_exchange_timeseries_item->volume_traded) {
    if(cJSON_AddNumberToObject(item, "volume_traded", ohlcv_exchange_timeseries_item->volume_traded) == NULL) {
    goto fail; //Numeric
    }
    }


    // ohlcv_exchange_timeseries_item->trades_count
    if(ohlcv_exchange_timeseries_item->trades_count) {
    if(cJSON_AddNumberToObject(item, "trades_count", ohlcv_exchange_timeseries_item->trades_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // ohlcv_exchange_timeseries_item->symbol_id_exchange
    if(ohlcv_exchange_timeseries_item->symbol_id_exchange) {
    if(cJSON_AddStringToObject(item, "symbol_id_exchange", ohlcv_exchange_timeseries_item->symbol_id_exchange) == NULL) {
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

ohlcv_exchange_timeseries_item_t *ohlcv_exchange_timeseries_item_parseFromJSON(cJSON *ohlcv_exchange_timeseries_itemJSON){

    ohlcv_exchange_timeseries_item_t *ohlcv_exchange_timeseries_item_local_var = NULL;

    // ohlcv_exchange_timeseries_item->time_period_start
    cJSON *time_period_start = cJSON_GetObjectItemCaseSensitive(ohlcv_exchange_timeseries_itemJSON, "time_period_start");
    if (cJSON_IsNull(time_period_start)) {
        time_period_start = NULL;
    }
    if (time_period_start) { 
    if(!cJSON_IsString(time_period_start) && !cJSON_IsNull(time_period_start))
    {
    goto end; //DateTime
    }
    }

    // ohlcv_exchange_timeseries_item->time_period_end
    cJSON *time_period_end = cJSON_GetObjectItemCaseSensitive(ohlcv_exchange_timeseries_itemJSON, "time_period_end");
    if (cJSON_IsNull(time_period_end)) {
        time_period_end = NULL;
    }
    if (time_period_end) { 
    if(!cJSON_IsString(time_period_end) && !cJSON_IsNull(time_period_end))
    {
    goto end; //DateTime
    }
    }

    // ohlcv_exchange_timeseries_item->time_open
    cJSON *time_open = cJSON_GetObjectItemCaseSensitive(ohlcv_exchange_timeseries_itemJSON, "time_open");
    if (cJSON_IsNull(time_open)) {
        time_open = NULL;
    }
    if (time_open) { 
    if(!cJSON_IsString(time_open) && !cJSON_IsNull(time_open))
    {
    goto end; //DateTime
    }
    }

    // ohlcv_exchange_timeseries_item->time_close
    cJSON *time_close = cJSON_GetObjectItemCaseSensitive(ohlcv_exchange_timeseries_itemJSON, "time_close");
    if (cJSON_IsNull(time_close)) {
        time_close = NULL;
    }
    if (time_close) { 
    if(!cJSON_IsString(time_close) && !cJSON_IsNull(time_close))
    {
    goto end; //DateTime
    }
    }

    // ohlcv_exchange_timeseries_item->price_open
    cJSON *price_open = cJSON_GetObjectItemCaseSensitive(ohlcv_exchange_timeseries_itemJSON, "price_open");
    if (cJSON_IsNull(price_open)) {
        price_open = NULL;
    }
    if (price_open) { 
    if(!cJSON_IsNumber(price_open))
    {
    goto end; //Numeric
    }
    }

    // ohlcv_exchange_timeseries_item->price_high
    cJSON *price_high = cJSON_GetObjectItemCaseSensitive(ohlcv_exchange_timeseries_itemJSON, "price_high");
    if (cJSON_IsNull(price_high)) {
        price_high = NULL;
    }
    if (price_high) { 
    if(!cJSON_IsNumber(price_high))
    {
    goto end; //Numeric
    }
    }

    // ohlcv_exchange_timeseries_item->price_low
    cJSON *price_low = cJSON_GetObjectItemCaseSensitive(ohlcv_exchange_timeseries_itemJSON, "price_low");
    if (cJSON_IsNull(price_low)) {
        price_low = NULL;
    }
    if (price_low) { 
    if(!cJSON_IsNumber(price_low))
    {
    goto end; //Numeric
    }
    }

    // ohlcv_exchange_timeseries_item->price_close
    cJSON *price_close = cJSON_GetObjectItemCaseSensitive(ohlcv_exchange_timeseries_itemJSON, "price_close");
    if (cJSON_IsNull(price_close)) {
        price_close = NULL;
    }
    if (price_close) { 
    if(!cJSON_IsNumber(price_close))
    {
    goto end; //Numeric
    }
    }

    // ohlcv_exchange_timeseries_item->volume_traded
    cJSON *volume_traded = cJSON_GetObjectItemCaseSensitive(ohlcv_exchange_timeseries_itemJSON, "volume_traded");
    if (cJSON_IsNull(volume_traded)) {
        volume_traded = NULL;
    }
    if (volume_traded) { 
    if(!cJSON_IsNumber(volume_traded))
    {
    goto end; //Numeric
    }
    }

    // ohlcv_exchange_timeseries_item->trades_count
    cJSON *trades_count = cJSON_GetObjectItemCaseSensitive(ohlcv_exchange_timeseries_itemJSON, "trades_count");
    if (cJSON_IsNull(trades_count)) {
        trades_count = NULL;
    }
    if (trades_count) { 
    if(!cJSON_IsNumber(trades_count))
    {
    goto end; //Numeric
    }
    }

    // ohlcv_exchange_timeseries_item->symbol_id_exchange
    cJSON *symbol_id_exchange = cJSON_GetObjectItemCaseSensitive(ohlcv_exchange_timeseries_itemJSON, "symbol_id_exchange");
    if (cJSON_IsNull(symbol_id_exchange)) {
        symbol_id_exchange = NULL;
    }
    if (symbol_id_exchange) { 
    if(!cJSON_IsString(symbol_id_exchange) && !cJSON_IsNull(symbol_id_exchange))
    {
    goto end; //String
    }
    }


    ohlcv_exchange_timeseries_item_local_var = ohlcv_exchange_timeseries_item_create_internal (
        time_period_start && !cJSON_IsNull(time_period_start) ? strdup(time_period_start->valuestring) : NULL,
        time_period_end && !cJSON_IsNull(time_period_end) ? strdup(time_period_end->valuestring) : NULL,
        time_open && !cJSON_IsNull(time_open) ? strdup(time_open->valuestring) : NULL,
        time_close && !cJSON_IsNull(time_close) ? strdup(time_close->valuestring) : NULL,
        price_open ? price_open->valuedouble : 0,
        price_high ? price_high->valuedouble : 0,
        price_low ? price_low->valuedouble : 0,
        price_close ? price_close->valuedouble : 0,
        volume_traded ? volume_traded->valuedouble : 0,
        trades_count ? trades_count->valuedouble : 0,
        symbol_id_exchange && !cJSON_IsNull(symbol_id_exchange) ? strdup(symbol_id_exchange->valuestring) : NULL
        );

    return ohlcv_exchange_timeseries_item_local_var;
end:
    return NULL;

}
