#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "trade_trade_model.h"



static trade_trade_model_t *trade_trade_model_create_internal(
    int is_trade_break,
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int size,
    double price,
    long trade_id,
    int is_intermarket_sweep,
    int is_extended_hours_trade,
    int is_odd_lot_trade,
    int is_trade_through_exempt,
    int is_single_price_cross_trade
    ) {
    trade_trade_model_t *trade_trade_model_local_var = malloc(sizeof(trade_trade_model_t));
    if (!trade_trade_model_local_var) {
        return NULL;
    }
    trade_trade_model_local_var->is_trade_break = is_trade_break;
    trade_trade_model_local_var->symbol = symbol;
    trade_trade_model_local_var->timestamp_nanos = timestamp_nanos;
    trade_trade_model_local_var->timestamp = timestamp;
    trade_trade_model_local_var->size = size;
    trade_trade_model_local_var->price = price;
    trade_trade_model_local_var->trade_id = trade_id;
    trade_trade_model_local_var->is_intermarket_sweep = is_intermarket_sweep;
    trade_trade_model_local_var->is_extended_hours_trade = is_extended_hours_trade;
    trade_trade_model_local_var->is_odd_lot_trade = is_odd_lot_trade;
    trade_trade_model_local_var->is_trade_through_exempt = is_trade_through_exempt;
    trade_trade_model_local_var->is_single_price_cross_trade = is_single_price_cross_trade;

    trade_trade_model_local_var->_library_owned = 1;
    return trade_trade_model_local_var;
}

__attribute__((deprecated)) trade_trade_model_t *trade_trade_model_create(
    int is_trade_break,
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int size,
    double price,
    long trade_id,
    int is_intermarket_sweep,
    int is_extended_hours_trade,
    int is_odd_lot_trade,
    int is_trade_through_exempt,
    int is_single_price_cross_trade
    ) {
    return trade_trade_model_create_internal (
        is_trade_break,
        symbol,
        timestamp_nanos,
        timestamp,
        size,
        price,
        trade_id,
        is_intermarket_sweep,
        is_extended_hours_trade,
        is_odd_lot_trade,
        is_trade_through_exempt,
        is_single_price_cross_trade
        );
}

void trade_trade_model_free(trade_trade_model_t *trade_trade_model) {
    if(NULL == trade_trade_model){
        return ;
    }
    if(trade_trade_model->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "trade_trade_model_free");
        return ;
    }
    listEntry_t *listEntry;
    if (trade_trade_model->symbol) {
        free(trade_trade_model->symbol);
        trade_trade_model->symbol = NULL;
    }
    if (trade_trade_model->timestamp) {
        free(trade_trade_model->timestamp);
        trade_trade_model->timestamp = NULL;
    }
    free(trade_trade_model);
}

cJSON *trade_trade_model_convertToJSON(trade_trade_model_t *trade_trade_model) {
    cJSON *item = cJSON_CreateObject();

    // trade_trade_model->is_trade_break
    if(trade_trade_model->is_trade_break) {
    if(cJSON_AddBoolToObject(item, "is_trade_break", trade_trade_model->is_trade_break) == NULL) {
    goto fail; //Bool
    }
    }


    // trade_trade_model->symbol
    if(trade_trade_model->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", trade_trade_model->symbol) == NULL) {
    goto fail; //String
    }
    }


    // trade_trade_model->timestamp_nanos
    if(trade_trade_model->timestamp_nanos) {
    if(cJSON_AddNumberToObject(item, "timestamp_nanos", trade_trade_model->timestamp_nanos) == NULL) {
    goto fail; //Numeric
    }
    }


    // trade_trade_model->timestamp
    if(trade_trade_model->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", trade_trade_model->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // trade_trade_model->size
    if(trade_trade_model->size) {
    if(cJSON_AddNumberToObject(item, "size", trade_trade_model->size) == NULL) {
    goto fail; //Numeric
    }
    }


    // trade_trade_model->price
    if(trade_trade_model->price) {
    if(cJSON_AddNumberToObject(item, "price", trade_trade_model->price) == NULL) {
    goto fail; //Numeric
    }
    }


    // trade_trade_model->trade_id
    if(trade_trade_model->trade_id) {
    if(cJSON_AddNumberToObject(item, "trade_id", trade_trade_model->trade_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // trade_trade_model->is_intermarket_sweep
    if(trade_trade_model->is_intermarket_sweep) {
    if(cJSON_AddBoolToObject(item, "is_intermarket_sweep", trade_trade_model->is_intermarket_sweep) == NULL) {
    goto fail; //Bool
    }
    }


    // trade_trade_model->is_extended_hours_trade
    if(trade_trade_model->is_extended_hours_trade) {
    if(cJSON_AddBoolToObject(item, "is_extended_hours_trade", trade_trade_model->is_extended_hours_trade) == NULL) {
    goto fail; //Bool
    }
    }


    // trade_trade_model->is_odd_lot_trade
    if(trade_trade_model->is_odd_lot_trade) {
    if(cJSON_AddBoolToObject(item, "is_odd_lot_trade", trade_trade_model->is_odd_lot_trade) == NULL) {
    goto fail; //Bool
    }
    }


    // trade_trade_model->is_trade_through_exempt
    if(trade_trade_model->is_trade_through_exempt) {
    if(cJSON_AddBoolToObject(item, "is_trade_through_exempt", trade_trade_model->is_trade_through_exempt) == NULL) {
    goto fail; //Bool
    }
    }


    // trade_trade_model->is_single_price_cross_trade
    if(trade_trade_model->is_single_price_cross_trade) {
    if(cJSON_AddBoolToObject(item, "is_single_price_cross_trade", trade_trade_model->is_single_price_cross_trade) == NULL) {
    goto fail; //Bool
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

trade_trade_model_t *trade_trade_model_parseFromJSON(cJSON *trade_trade_modelJSON){

    trade_trade_model_t *trade_trade_model_local_var = NULL;

    // trade_trade_model->is_trade_break
    cJSON *is_trade_break = cJSON_GetObjectItemCaseSensitive(trade_trade_modelJSON, "is_trade_break");
    if (cJSON_IsNull(is_trade_break)) {
        is_trade_break = NULL;
    }
    if (is_trade_break) { 
    if(!cJSON_IsBool(is_trade_break))
    {
    goto end; //Bool
    }
    }

    // trade_trade_model->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(trade_trade_modelJSON, "symbol");
    if (cJSON_IsNull(symbol)) {
        symbol = NULL;
    }
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // trade_trade_model->timestamp_nanos
    cJSON *timestamp_nanos = cJSON_GetObjectItemCaseSensitive(trade_trade_modelJSON, "timestamp_nanos");
    if (cJSON_IsNull(timestamp_nanos)) {
        timestamp_nanos = NULL;
    }
    if (timestamp_nanos) { 
    if(!cJSON_IsNumber(timestamp_nanos))
    {
    goto end; //Numeric
    }
    }

    // trade_trade_model->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(trade_trade_modelJSON, "timestamp");
    if (cJSON_IsNull(timestamp)) {
        timestamp = NULL;
    }
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //DateTime
    }
    }

    // trade_trade_model->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(trade_trade_modelJSON, "size");
    if (cJSON_IsNull(size)) {
        size = NULL;
    }
    if (size) { 
    if(!cJSON_IsNumber(size))
    {
    goto end; //Numeric
    }
    }

    // trade_trade_model->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(trade_trade_modelJSON, "price");
    if (cJSON_IsNull(price)) {
        price = NULL;
    }
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }

    // trade_trade_model->trade_id
    cJSON *trade_id = cJSON_GetObjectItemCaseSensitive(trade_trade_modelJSON, "trade_id");
    if (cJSON_IsNull(trade_id)) {
        trade_id = NULL;
    }
    if (trade_id) { 
    if(!cJSON_IsNumber(trade_id))
    {
    goto end; //Numeric
    }
    }

    // trade_trade_model->is_intermarket_sweep
    cJSON *is_intermarket_sweep = cJSON_GetObjectItemCaseSensitive(trade_trade_modelJSON, "is_intermarket_sweep");
    if (cJSON_IsNull(is_intermarket_sweep)) {
        is_intermarket_sweep = NULL;
    }
    if (is_intermarket_sweep) { 
    if(!cJSON_IsBool(is_intermarket_sweep))
    {
    goto end; //Bool
    }
    }

    // trade_trade_model->is_extended_hours_trade
    cJSON *is_extended_hours_trade = cJSON_GetObjectItemCaseSensitive(trade_trade_modelJSON, "is_extended_hours_trade");
    if (cJSON_IsNull(is_extended_hours_trade)) {
        is_extended_hours_trade = NULL;
    }
    if (is_extended_hours_trade) { 
    if(!cJSON_IsBool(is_extended_hours_trade))
    {
    goto end; //Bool
    }
    }

    // trade_trade_model->is_odd_lot_trade
    cJSON *is_odd_lot_trade = cJSON_GetObjectItemCaseSensitive(trade_trade_modelJSON, "is_odd_lot_trade");
    if (cJSON_IsNull(is_odd_lot_trade)) {
        is_odd_lot_trade = NULL;
    }
    if (is_odd_lot_trade) { 
    if(!cJSON_IsBool(is_odd_lot_trade))
    {
    goto end; //Bool
    }
    }

    // trade_trade_model->is_trade_through_exempt
    cJSON *is_trade_through_exempt = cJSON_GetObjectItemCaseSensitive(trade_trade_modelJSON, "is_trade_through_exempt");
    if (cJSON_IsNull(is_trade_through_exempt)) {
        is_trade_through_exempt = NULL;
    }
    if (is_trade_through_exempt) { 
    if(!cJSON_IsBool(is_trade_through_exempt))
    {
    goto end; //Bool
    }
    }

    // trade_trade_model->is_single_price_cross_trade
    cJSON *is_single_price_cross_trade = cJSON_GetObjectItemCaseSensitive(trade_trade_modelJSON, "is_single_price_cross_trade");
    if (cJSON_IsNull(is_single_price_cross_trade)) {
        is_single_price_cross_trade = NULL;
    }
    if (is_single_price_cross_trade) { 
    if(!cJSON_IsBool(is_single_price_cross_trade))
    {
    goto end; //Bool
    }
    }


    trade_trade_model_local_var = trade_trade_model_create_internal (
        is_trade_break ? is_trade_break->valueint : 0,
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        timestamp_nanos ? timestamp_nanos->valuedouble : 0,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        size ? size->valuedouble : 0,
        price ? price->valuedouble : 0,
        trade_id ? trade_id->valuedouble : 0,
        is_intermarket_sweep ? is_intermarket_sweep->valueint : 0,
        is_extended_hours_trade ? is_extended_hours_trade->valueint : 0,
        is_odd_lot_trade ? is_odd_lot_trade->valueint : 0,
        is_trade_through_exempt ? is_trade_through_exempt->valueint : 0,
        is_single_price_cross_trade ? is_single_price_cross_trade->valueint : 0
        );

    return trade_trade_model_local_var;
end:
    return NULL;

}
