#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "level3_executed_order_model.h"



static level3_executed_order_model_t *level3_executed_order_model_create_internal(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    long order_id_reference,
    int sale_condition_flags,
    int is_intermarket_sweep,
    int is_extended_hours_trade,
    int is_odd_lot_trade,
    int is_trade_through_exempt,
    int is_single_price_cross_trade,
    int size,
    double price,
    long trade_id
    ) {
    level3_executed_order_model_t *level3_executed_order_model_local_var = malloc(sizeof(level3_executed_order_model_t));
    if (!level3_executed_order_model_local_var) {
        return NULL;
    }
    level3_executed_order_model_local_var->symbol = symbol;
    level3_executed_order_model_local_var->timestamp_nanos = timestamp_nanos;
    level3_executed_order_model_local_var->timestamp = timestamp;
    level3_executed_order_model_local_var->order_id_reference = order_id_reference;
    level3_executed_order_model_local_var->sale_condition_flags = sale_condition_flags;
    level3_executed_order_model_local_var->is_intermarket_sweep = is_intermarket_sweep;
    level3_executed_order_model_local_var->is_extended_hours_trade = is_extended_hours_trade;
    level3_executed_order_model_local_var->is_odd_lot_trade = is_odd_lot_trade;
    level3_executed_order_model_local_var->is_trade_through_exempt = is_trade_through_exempt;
    level3_executed_order_model_local_var->is_single_price_cross_trade = is_single_price_cross_trade;
    level3_executed_order_model_local_var->size = size;
    level3_executed_order_model_local_var->price = price;
    level3_executed_order_model_local_var->trade_id = trade_id;

    level3_executed_order_model_local_var->_library_owned = 1;
    return level3_executed_order_model_local_var;
}

__attribute__((deprecated)) level3_executed_order_model_t *level3_executed_order_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    long order_id_reference,
    int sale_condition_flags,
    int is_intermarket_sweep,
    int is_extended_hours_trade,
    int is_odd_lot_trade,
    int is_trade_through_exempt,
    int is_single_price_cross_trade,
    int size,
    double price,
    long trade_id
    ) {
    return level3_executed_order_model_create_internal (
        symbol,
        timestamp_nanos,
        timestamp,
        order_id_reference,
        sale_condition_flags,
        is_intermarket_sweep,
        is_extended_hours_trade,
        is_odd_lot_trade,
        is_trade_through_exempt,
        is_single_price_cross_trade,
        size,
        price,
        trade_id
        );
}

void level3_executed_order_model_free(level3_executed_order_model_t *level3_executed_order_model) {
    if(NULL == level3_executed_order_model){
        return ;
    }
    if(level3_executed_order_model->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "level3_executed_order_model_free");
        return ;
    }
    listEntry_t *listEntry;
    if (level3_executed_order_model->symbol) {
        free(level3_executed_order_model->symbol);
        level3_executed_order_model->symbol = NULL;
    }
    if (level3_executed_order_model->timestamp) {
        free(level3_executed_order_model->timestamp);
        level3_executed_order_model->timestamp = NULL;
    }
    free(level3_executed_order_model);
}

cJSON *level3_executed_order_model_convertToJSON(level3_executed_order_model_t *level3_executed_order_model) {
    cJSON *item = cJSON_CreateObject();

    // level3_executed_order_model->symbol
    if(level3_executed_order_model->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", level3_executed_order_model->symbol) == NULL) {
    goto fail; //String
    }
    }


    // level3_executed_order_model->timestamp_nanos
    if(level3_executed_order_model->timestamp_nanos) {
    if(cJSON_AddNumberToObject(item, "timestamp_nanos", level3_executed_order_model->timestamp_nanos) == NULL) {
    goto fail; //Numeric
    }
    }


    // level3_executed_order_model->timestamp
    if(level3_executed_order_model->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", level3_executed_order_model->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // level3_executed_order_model->order_id_reference
    if(level3_executed_order_model->order_id_reference) {
    if(cJSON_AddNumberToObject(item, "order_id_reference", level3_executed_order_model->order_id_reference) == NULL) {
    goto fail; //Numeric
    }
    }


    // level3_executed_order_model->sale_condition_flags
    if(level3_executed_order_model->sale_condition_flags) {
    if(cJSON_AddNumberToObject(item, "sale_condition_flags", level3_executed_order_model->sale_condition_flags) == NULL) {
    goto fail; //Numeric
    }
    }


    // level3_executed_order_model->is_intermarket_sweep
    if(level3_executed_order_model->is_intermarket_sweep) {
    if(cJSON_AddBoolToObject(item, "is_intermarket_sweep", level3_executed_order_model->is_intermarket_sweep) == NULL) {
    goto fail; //Bool
    }
    }


    // level3_executed_order_model->is_extended_hours_trade
    if(level3_executed_order_model->is_extended_hours_trade) {
    if(cJSON_AddBoolToObject(item, "is_extended_hours_trade", level3_executed_order_model->is_extended_hours_trade) == NULL) {
    goto fail; //Bool
    }
    }


    // level3_executed_order_model->is_odd_lot_trade
    if(level3_executed_order_model->is_odd_lot_trade) {
    if(cJSON_AddBoolToObject(item, "is_odd_lot_trade", level3_executed_order_model->is_odd_lot_trade) == NULL) {
    goto fail; //Bool
    }
    }


    // level3_executed_order_model->is_trade_through_exempt
    if(level3_executed_order_model->is_trade_through_exempt) {
    if(cJSON_AddBoolToObject(item, "is_trade_through_exempt", level3_executed_order_model->is_trade_through_exempt) == NULL) {
    goto fail; //Bool
    }
    }


    // level3_executed_order_model->is_single_price_cross_trade
    if(level3_executed_order_model->is_single_price_cross_trade) {
    if(cJSON_AddBoolToObject(item, "is_single_price_cross_trade", level3_executed_order_model->is_single_price_cross_trade) == NULL) {
    goto fail; //Bool
    }
    }


    // level3_executed_order_model->size
    if(level3_executed_order_model->size) {
    if(cJSON_AddNumberToObject(item, "size", level3_executed_order_model->size) == NULL) {
    goto fail; //Numeric
    }
    }


    // level3_executed_order_model->price
    if(level3_executed_order_model->price) {
    if(cJSON_AddNumberToObject(item, "price", level3_executed_order_model->price) == NULL) {
    goto fail; //Numeric
    }
    }


    // level3_executed_order_model->trade_id
    if(level3_executed_order_model->trade_id) {
    if(cJSON_AddNumberToObject(item, "trade_id", level3_executed_order_model->trade_id) == NULL) {
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

level3_executed_order_model_t *level3_executed_order_model_parseFromJSON(cJSON *level3_executed_order_modelJSON){

    level3_executed_order_model_t *level3_executed_order_model_local_var = NULL;

    // level3_executed_order_model->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(level3_executed_order_modelJSON, "symbol");
    if (cJSON_IsNull(symbol)) {
        symbol = NULL;
    }
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // level3_executed_order_model->timestamp_nanos
    cJSON *timestamp_nanos = cJSON_GetObjectItemCaseSensitive(level3_executed_order_modelJSON, "timestamp_nanos");
    if (cJSON_IsNull(timestamp_nanos)) {
        timestamp_nanos = NULL;
    }
    if (timestamp_nanos) { 
    if(!cJSON_IsNumber(timestamp_nanos))
    {
    goto end; //Numeric
    }
    }

    // level3_executed_order_model->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(level3_executed_order_modelJSON, "timestamp");
    if (cJSON_IsNull(timestamp)) {
        timestamp = NULL;
    }
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //DateTime
    }
    }

    // level3_executed_order_model->order_id_reference
    cJSON *order_id_reference = cJSON_GetObjectItemCaseSensitive(level3_executed_order_modelJSON, "order_id_reference");
    if (cJSON_IsNull(order_id_reference)) {
        order_id_reference = NULL;
    }
    if (order_id_reference) { 
    if(!cJSON_IsNumber(order_id_reference))
    {
    goto end; //Numeric
    }
    }

    // level3_executed_order_model->sale_condition_flags
    cJSON *sale_condition_flags = cJSON_GetObjectItemCaseSensitive(level3_executed_order_modelJSON, "sale_condition_flags");
    if (cJSON_IsNull(sale_condition_flags)) {
        sale_condition_flags = NULL;
    }
    if (sale_condition_flags) { 
    if(!cJSON_IsNumber(sale_condition_flags))
    {
    goto end; //Numeric
    }
    }

    // level3_executed_order_model->is_intermarket_sweep
    cJSON *is_intermarket_sweep = cJSON_GetObjectItemCaseSensitive(level3_executed_order_modelJSON, "is_intermarket_sweep");
    if (cJSON_IsNull(is_intermarket_sweep)) {
        is_intermarket_sweep = NULL;
    }
    if (is_intermarket_sweep) { 
    if(!cJSON_IsBool(is_intermarket_sweep))
    {
    goto end; //Bool
    }
    }

    // level3_executed_order_model->is_extended_hours_trade
    cJSON *is_extended_hours_trade = cJSON_GetObjectItemCaseSensitive(level3_executed_order_modelJSON, "is_extended_hours_trade");
    if (cJSON_IsNull(is_extended_hours_trade)) {
        is_extended_hours_trade = NULL;
    }
    if (is_extended_hours_trade) { 
    if(!cJSON_IsBool(is_extended_hours_trade))
    {
    goto end; //Bool
    }
    }

    // level3_executed_order_model->is_odd_lot_trade
    cJSON *is_odd_lot_trade = cJSON_GetObjectItemCaseSensitive(level3_executed_order_modelJSON, "is_odd_lot_trade");
    if (cJSON_IsNull(is_odd_lot_trade)) {
        is_odd_lot_trade = NULL;
    }
    if (is_odd_lot_trade) { 
    if(!cJSON_IsBool(is_odd_lot_trade))
    {
    goto end; //Bool
    }
    }

    // level3_executed_order_model->is_trade_through_exempt
    cJSON *is_trade_through_exempt = cJSON_GetObjectItemCaseSensitive(level3_executed_order_modelJSON, "is_trade_through_exempt");
    if (cJSON_IsNull(is_trade_through_exempt)) {
        is_trade_through_exempt = NULL;
    }
    if (is_trade_through_exempt) { 
    if(!cJSON_IsBool(is_trade_through_exempt))
    {
    goto end; //Bool
    }
    }

    // level3_executed_order_model->is_single_price_cross_trade
    cJSON *is_single_price_cross_trade = cJSON_GetObjectItemCaseSensitive(level3_executed_order_modelJSON, "is_single_price_cross_trade");
    if (cJSON_IsNull(is_single_price_cross_trade)) {
        is_single_price_cross_trade = NULL;
    }
    if (is_single_price_cross_trade) { 
    if(!cJSON_IsBool(is_single_price_cross_trade))
    {
    goto end; //Bool
    }
    }

    // level3_executed_order_model->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(level3_executed_order_modelJSON, "size");
    if (cJSON_IsNull(size)) {
        size = NULL;
    }
    if (size) { 
    if(!cJSON_IsNumber(size))
    {
    goto end; //Numeric
    }
    }

    // level3_executed_order_model->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(level3_executed_order_modelJSON, "price");
    if (cJSON_IsNull(price)) {
        price = NULL;
    }
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }

    // level3_executed_order_model->trade_id
    cJSON *trade_id = cJSON_GetObjectItemCaseSensitive(level3_executed_order_modelJSON, "trade_id");
    if (cJSON_IsNull(trade_id)) {
        trade_id = NULL;
    }
    if (trade_id) { 
    if(!cJSON_IsNumber(trade_id))
    {
    goto end; //Numeric
    }
    }


    level3_executed_order_model_local_var = level3_executed_order_model_create_internal (
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        timestamp_nanos ? timestamp_nanos->valuedouble : 0,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        order_id_reference ? order_id_reference->valuedouble : 0,
        sale_condition_flags ? sale_condition_flags->valuedouble : 0,
        is_intermarket_sweep ? is_intermarket_sweep->valueint : 0,
        is_extended_hours_trade ? is_extended_hours_trade->valueint : 0,
        is_odd_lot_trade ? is_odd_lot_trade->valueint : 0,
        is_trade_through_exempt ? is_trade_through_exempt->valueint : 0,
        is_single_price_cross_trade ? is_single_price_cross_trade->valueint : 0,
        size ? size->valuedouble : 0,
        price ? price->valuedouble : 0,
        trade_id ? trade_id->valuedouble : 0
        );

    return level3_executed_order_model_local_var;
end:
    return NULL;

}
