#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "models_exchange_timeseries_item.h"



static models_exchange_timeseries_item_t *models_exchange_timeseries_item_create_internal(
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
    char *symbol_id_exchange,
    char *symbol_id_coinapi
    ) {
    models_exchange_timeseries_item_t *models_exchange_timeseries_item_local_var = malloc(sizeof(models_exchange_timeseries_item_t));
    if (!models_exchange_timeseries_item_local_var) {
        return NULL;
    }
    models_exchange_timeseries_item_local_var->time_period_start = time_period_start;
    models_exchange_timeseries_item_local_var->time_period_end = time_period_end;
    models_exchange_timeseries_item_local_var->time_open = time_open;
    models_exchange_timeseries_item_local_var->time_close = time_close;
    models_exchange_timeseries_item_local_var->price_open = price_open;
    models_exchange_timeseries_item_local_var->price_high = price_high;
    models_exchange_timeseries_item_local_var->price_low = price_low;
    models_exchange_timeseries_item_local_var->price_close = price_close;
    models_exchange_timeseries_item_local_var->volume_traded = volume_traded;
    models_exchange_timeseries_item_local_var->trades_count = trades_count;
    models_exchange_timeseries_item_local_var->symbol_id_exchange = symbol_id_exchange;
    models_exchange_timeseries_item_local_var->symbol_id_coinapi = symbol_id_coinapi;

    models_exchange_timeseries_item_local_var->_library_owned = 1;
    return models_exchange_timeseries_item_local_var;
}

__attribute__((deprecated)) models_exchange_timeseries_item_t *models_exchange_timeseries_item_create(
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
    char *symbol_id_exchange,
    char *symbol_id_coinapi
    ) {
    return models_exchange_timeseries_item_create_internal (
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
        symbol_id_exchange,
        symbol_id_coinapi
        );
}

void models_exchange_timeseries_item_free(models_exchange_timeseries_item_t *models_exchange_timeseries_item) {
    if(NULL == models_exchange_timeseries_item){
        return ;
    }
    if(models_exchange_timeseries_item->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "models_exchange_timeseries_item_free");
        return ;
    }
    listEntry_t *listEntry;
    if (models_exchange_timeseries_item->time_period_start) {
        free(models_exchange_timeseries_item->time_period_start);
        models_exchange_timeseries_item->time_period_start = NULL;
    }
    if (models_exchange_timeseries_item->time_period_end) {
        free(models_exchange_timeseries_item->time_period_end);
        models_exchange_timeseries_item->time_period_end = NULL;
    }
    if (models_exchange_timeseries_item->time_open) {
        free(models_exchange_timeseries_item->time_open);
        models_exchange_timeseries_item->time_open = NULL;
    }
    if (models_exchange_timeseries_item->time_close) {
        free(models_exchange_timeseries_item->time_close);
        models_exchange_timeseries_item->time_close = NULL;
    }
    if (models_exchange_timeseries_item->symbol_id_exchange) {
        free(models_exchange_timeseries_item->symbol_id_exchange);
        models_exchange_timeseries_item->symbol_id_exchange = NULL;
    }
    if (models_exchange_timeseries_item->symbol_id_coinapi) {
        free(models_exchange_timeseries_item->symbol_id_coinapi);
        models_exchange_timeseries_item->symbol_id_coinapi = NULL;
    }
    free(models_exchange_timeseries_item);
}

cJSON *models_exchange_timeseries_item_convertToJSON(models_exchange_timeseries_item_t *models_exchange_timeseries_item) {
    cJSON *item = cJSON_CreateObject();

    // models_exchange_timeseries_item->time_period_start
    if(models_exchange_timeseries_item->time_period_start) {
    if(cJSON_AddStringToObject(item, "time_period_start", models_exchange_timeseries_item->time_period_start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // models_exchange_timeseries_item->time_period_end
    if(models_exchange_timeseries_item->time_period_end) {
    if(cJSON_AddStringToObject(item, "time_period_end", models_exchange_timeseries_item->time_period_end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // models_exchange_timeseries_item->time_open
    if(models_exchange_timeseries_item->time_open) {
    if(cJSON_AddStringToObject(item, "time_open", models_exchange_timeseries_item->time_open) == NULL) {
    goto fail; //Date-Time
    }
    }


    // models_exchange_timeseries_item->time_close
    if(models_exchange_timeseries_item->time_close) {
    if(cJSON_AddStringToObject(item, "time_close", models_exchange_timeseries_item->time_close) == NULL) {
    goto fail; //Date-Time
    }
    }


    // models_exchange_timeseries_item->price_open
    if(models_exchange_timeseries_item->price_open) {
    if(cJSON_AddNumberToObject(item, "price_open", models_exchange_timeseries_item->price_open) == NULL) {
    goto fail; //Numeric
    }
    }


    // models_exchange_timeseries_item->price_high
    if(models_exchange_timeseries_item->price_high) {
    if(cJSON_AddNumberToObject(item, "price_high", models_exchange_timeseries_item->price_high) == NULL) {
    goto fail; //Numeric
    }
    }


    // models_exchange_timeseries_item->price_low
    if(models_exchange_timeseries_item->price_low) {
    if(cJSON_AddNumberToObject(item, "price_low", models_exchange_timeseries_item->price_low) == NULL) {
    goto fail; //Numeric
    }
    }


    // models_exchange_timeseries_item->price_close
    if(models_exchange_timeseries_item->price_close) {
    if(cJSON_AddNumberToObject(item, "price_close", models_exchange_timeseries_item->price_close) == NULL) {
    goto fail; //Numeric
    }
    }


    // models_exchange_timeseries_item->volume_traded
    if(models_exchange_timeseries_item->volume_traded) {
    if(cJSON_AddNumberToObject(item, "volume_traded", models_exchange_timeseries_item->volume_traded) == NULL) {
    goto fail; //Numeric
    }
    }


    // models_exchange_timeseries_item->trades_count
    if(models_exchange_timeseries_item->trades_count) {
    if(cJSON_AddNumberToObject(item, "trades_count", models_exchange_timeseries_item->trades_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // models_exchange_timeseries_item->symbol_id_exchange
    if(models_exchange_timeseries_item->symbol_id_exchange) {
    if(cJSON_AddStringToObject(item, "symbol_id_exchange", models_exchange_timeseries_item->symbol_id_exchange) == NULL) {
    goto fail; //String
    }
    }


    // models_exchange_timeseries_item->symbol_id_coinapi
    if(models_exchange_timeseries_item->symbol_id_coinapi) {
    if(cJSON_AddStringToObject(item, "symbol_id_coinapi", models_exchange_timeseries_item->symbol_id_coinapi) == NULL) {
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

models_exchange_timeseries_item_t *models_exchange_timeseries_item_parseFromJSON(cJSON *models_exchange_timeseries_itemJSON){

    models_exchange_timeseries_item_t *models_exchange_timeseries_item_local_var = NULL;

    // models_exchange_timeseries_item->time_period_start
    cJSON *time_period_start = cJSON_GetObjectItemCaseSensitive(models_exchange_timeseries_itemJSON, "time_period_start");
    if (cJSON_IsNull(time_period_start)) {
        time_period_start = NULL;
    }
    if (time_period_start) { 
    if(!cJSON_IsString(time_period_start) && !cJSON_IsNull(time_period_start))
    {
    goto end; //DateTime
    }
    }

    // models_exchange_timeseries_item->time_period_end
    cJSON *time_period_end = cJSON_GetObjectItemCaseSensitive(models_exchange_timeseries_itemJSON, "time_period_end");
    if (cJSON_IsNull(time_period_end)) {
        time_period_end = NULL;
    }
    if (time_period_end) { 
    if(!cJSON_IsString(time_period_end) && !cJSON_IsNull(time_period_end))
    {
    goto end; //DateTime
    }
    }

    // models_exchange_timeseries_item->time_open
    cJSON *time_open = cJSON_GetObjectItemCaseSensitive(models_exchange_timeseries_itemJSON, "time_open");
    if (cJSON_IsNull(time_open)) {
        time_open = NULL;
    }
    if (time_open) { 
    if(!cJSON_IsString(time_open) && !cJSON_IsNull(time_open))
    {
    goto end; //DateTime
    }
    }

    // models_exchange_timeseries_item->time_close
    cJSON *time_close = cJSON_GetObjectItemCaseSensitive(models_exchange_timeseries_itemJSON, "time_close");
    if (cJSON_IsNull(time_close)) {
        time_close = NULL;
    }
    if (time_close) { 
    if(!cJSON_IsString(time_close) && !cJSON_IsNull(time_close))
    {
    goto end; //DateTime
    }
    }

    // models_exchange_timeseries_item->price_open
    cJSON *price_open = cJSON_GetObjectItemCaseSensitive(models_exchange_timeseries_itemJSON, "price_open");
    if (cJSON_IsNull(price_open)) {
        price_open = NULL;
    }
    if (price_open) { 
    if(!cJSON_IsNumber(price_open))
    {
    goto end; //Numeric
    }
    }

    // models_exchange_timeseries_item->price_high
    cJSON *price_high = cJSON_GetObjectItemCaseSensitive(models_exchange_timeseries_itemJSON, "price_high");
    if (cJSON_IsNull(price_high)) {
        price_high = NULL;
    }
    if (price_high) { 
    if(!cJSON_IsNumber(price_high))
    {
    goto end; //Numeric
    }
    }

    // models_exchange_timeseries_item->price_low
    cJSON *price_low = cJSON_GetObjectItemCaseSensitive(models_exchange_timeseries_itemJSON, "price_low");
    if (cJSON_IsNull(price_low)) {
        price_low = NULL;
    }
    if (price_low) { 
    if(!cJSON_IsNumber(price_low))
    {
    goto end; //Numeric
    }
    }

    // models_exchange_timeseries_item->price_close
    cJSON *price_close = cJSON_GetObjectItemCaseSensitive(models_exchange_timeseries_itemJSON, "price_close");
    if (cJSON_IsNull(price_close)) {
        price_close = NULL;
    }
    if (price_close) { 
    if(!cJSON_IsNumber(price_close))
    {
    goto end; //Numeric
    }
    }

    // models_exchange_timeseries_item->volume_traded
    cJSON *volume_traded = cJSON_GetObjectItemCaseSensitive(models_exchange_timeseries_itemJSON, "volume_traded");
    if (cJSON_IsNull(volume_traded)) {
        volume_traded = NULL;
    }
    if (volume_traded) { 
    if(!cJSON_IsNumber(volume_traded))
    {
    goto end; //Numeric
    }
    }

    // models_exchange_timeseries_item->trades_count
    cJSON *trades_count = cJSON_GetObjectItemCaseSensitive(models_exchange_timeseries_itemJSON, "trades_count");
    if (cJSON_IsNull(trades_count)) {
        trades_count = NULL;
    }
    if (trades_count) { 
    if(!cJSON_IsNumber(trades_count))
    {
    goto end; //Numeric
    }
    }

    // models_exchange_timeseries_item->symbol_id_exchange
    cJSON *symbol_id_exchange = cJSON_GetObjectItemCaseSensitive(models_exchange_timeseries_itemJSON, "symbol_id_exchange");
    if (cJSON_IsNull(symbol_id_exchange)) {
        symbol_id_exchange = NULL;
    }
    if (symbol_id_exchange) { 
    if(!cJSON_IsString(symbol_id_exchange) && !cJSON_IsNull(symbol_id_exchange))
    {
    goto end; //String
    }
    }

    // models_exchange_timeseries_item->symbol_id_coinapi
    cJSON *symbol_id_coinapi = cJSON_GetObjectItemCaseSensitive(models_exchange_timeseries_itemJSON, "symbol_id_coinapi");
    if (cJSON_IsNull(symbol_id_coinapi)) {
        symbol_id_coinapi = NULL;
    }
    if (symbol_id_coinapi) { 
    if(!cJSON_IsString(symbol_id_coinapi) && !cJSON_IsNull(symbol_id_coinapi))
    {
    goto end; //String
    }
    }


    models_exchange_timeseries_item_local_var = models_exchange_timeseries_item_create_internal (
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
        symbol_id_exchange && !cJSON_IsNull(symbol_id_exchange) ? strdup(symbol_id_exchange->valuestring) : NULL,
        symbol_id_coinapi && !cJSON_IsNull(symbol_id_coinapi) ? strdup(symbol_id_coinapi->valuestring) : NULL
        );

    return models_exchange_timeseries_item_local_var;
end:
    return NULL;

}
