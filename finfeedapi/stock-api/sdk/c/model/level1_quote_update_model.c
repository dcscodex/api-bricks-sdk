#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "level1_quote_update_model.h"



static level1_quote_update_model_t *level1_quote_update_model_create_internal(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int is_symbol_available,
    int is_pre_post_market_session,
    int ask_size,
    double ask_price,
    double bid_price,
    int bid_size
    ) {
    level1_quote_update_model_t *level1_quote_update_model_local_var = malloc(sizeof(level1_quote_update_model_t));
    if (!level1_quote_update_model_local_var) {
        return NULL;
    }
    level1_quote_update_model_local_var->symbol = symbol;
    level1_quote_update_model_local_var->timestamp_nanos = timestamp_nanos;
    level1_quote_update_model_local_var->timestamp = timestamp;
    level1_quote_update_model_local_var->is_symbol_available = is_symbol_available;
    level1_quote_update_model_local_var->is_pre_post_market_session = is_pre_post_market_session;
    level1_quote_update_model_local_var->ask_size = ask_size;
    level1_quote_update_model_local_var->ask_price = ask_price;
    level1_quote_update_model_local_var->bid_price = bid_price;
    level1_quote_update_model_local_var->bid_size = bid_size;

    level1_quote_update_model_local_var->_library_owned = 1;
    return level1_quote_update_model_local_var;
}

__attribute__((deprecated)) level1_quote_update_model_t *level1_quote_update_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int is_symbol_available,
    int is_pre_post_market_session,
    int ask_size,
    double ask_price,
    double bid_price,
    int bid_size
    ) {
    return level1_quote_update_model_create_internal (
        symbol,
        timestamp_nanos,
        timestamp,
        is_symbol_available,
        is_pre_post_market_session,
        ask_size,
        ask_price,
        bid_price,
        bid_size
        );
}

void level1_quote_update_model_free(level1_quote_update_model_t *level1_quote_update_model) {
    if(NULL == level1_quote_update_model){
        return ;
    }
    if(level1_quote_update_model->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "level1_quote_update_model_free");
        return ;
    }
    listEntry_t *listEntry;
    if (level1_quote_update_model->symbol) {
        free(level1_quote_update_model->symbol);
        level1_quote_update_model->symbol = NULL;
    }
    if (level1_quote_update_model->timestamp) {
        free(level1_quote_update_model->timestamp);
        level1_quote_update_model->timestamp = NULL;
    }
    free(level1_quote_update_model);
}

cJSON *level1_quote_update_model_convertToJSON(level1_quote_update_model_t *level1_quote_update_model) {
    cJSON *item = cJSON_CreateObject();

    // level1_quote_update_model->symbol
    if(level1_quote_update_model->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", level1_quote_update_model->symbol) == NULL) {
    goto fail; //String
    }
    }


    // level1_quote_update_model->timestamp_nanos
    if(level1_quote_update_model->timestamp_nanos) {
    if(cJSON_AddNumberToObject(item, "timestamp_nanos", level1_quote_update_model->timestamp_nanos) == NULL) {
    goto fail; //Numeric
    }
    }


    // level1_quote_update_model->timestamp
    if(level1_quote_update_model->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", level1_quote_update_model->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // level1_quote_update_model->is_symbol_available
    if(level1_quote_update_model->is_symbol_available) {
    if(cJSON_AddBoolToObject(item, "is_symbol_available", level1_quote_update_model->is_symbol_available) == NULL) {
    goto fail; //Bool
    }
    }


    // level1_quote_update_model->is_pre_post_market_session
    if(level1_quote_update_model->is_pre_post_market_session) {
    if(cJSON_AddBoolToObject(item, "is_pre_post_market_session", level1_quote_update_model->is_pre_post_market_session) == NULL) {
    goto fail; //Bool
    }
    }


    // level1_quote_update_model->ask_size
    if(level1_quote_update_model->ask_size) {
    if(cJSON_AddNumberToObject(item, "ask_size", level1_quote_update_model->ask_size) == NULL) {
    goto fail; //Numeric
    }
    }


    // level1_quote_update_model->ask_price
    if(level1_quote_update_model->ask_price) {
    if(cJSON_AddNumberToObject(item, "ask_price", level1_quote_update_model->ask_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // level1_quote_update_model->bid_price
    if(level1_quote_update_model->bid_price) {
    if(cJSON_AddNumberToObject(item, "bid_price", level1_quote_update_model->bid_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // level1_quote_update_model->bid_size
    if(level1_quote_update_model->bid_size) {
    if(cJSON_AddNumberToObject(item, "bid_size", level1_quote_update_model->bid_size) == NULL) {
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

level1_quote_update_model_t *level1_quote_update_model_parseFromJSON(cJSON *level1_quote_update_modelJSON){

    level1_quote_update_model_t *level1_quote_update_model_local_var = NULL;

    // level1_quote_update_model->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(level1_quote_update_modelJSON, "symbol");
    if (cJSON_IsNull(symbol)) {
        symbol = NULL;
    }
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // level1_quote_update_model->timestamp_nanos
    cJSON *timestamp_nanos = cJSON_GetObjectItemCaseSensitive(level1_quote_update_modelJSON, "timestamp_nanos");
    if (cJSON_IsNull(timestamp_nanos)) {
        timestamp_nanos = NULL;
    }
    if (timestamp_nanos) { 
    if(!cJSON_IsNumber(timestamp_nanos))
    {
    goto end; //Numeric
    }
    }

    // level1_quote_update_model->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(level1_quote_update_modelJSON, "timestamp");
    if (cJSON_IsNull(timestamp)) {
        timestamp = NULL;
    }
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //DateTime
    }
    }

    // level1_quote_update_model->is_symbol_available
    cJSON *is_symbol_available = cJSON_GetObjectItemCaseSensitive(level1_quote_update_modelJSON, "is_symbol_available");
    if (cJSON_IsNull(is_symbol_available)) {
        is_symbol_available = NULL;
    }
    if (is_symbol_available) { 
    if(!cJSON_IsBool(is_symbol_available))
    {
    goto end; //Bool
    }
    }

    // level1_quote_update_model->is_pre_post_market_session
    cJSON *is_pre_post_market_session = cJSON_GetObjectItemCaseSensitive(level1_quote_update_modelJSON, "is_pre_post_market_session");
    if (cJSON_IsNull(is_pre_post_market_session)) {
        is_pre_post_market_session = NULL;
    }
    if (is_pre_post_market_session) { 
    if(!cJSON_IsBool(is_pre_post_market_session))
    {
    goto end; //Bool
    }
    }

    // level1_quote_update_model->ask_size
    cJSON *ask_size = cJSON_GetObjectItemCaseSensitive(level1_quote_update_modelJSON, "ask_size");
    if (cJSON_IsNull(ask_size)) {
        ask_size = NULL;
    }
    if (ask_size) { 
    if(!cJSON_IsNumber(ask_size))
    {
    goto end; //Numeric
    }
    }

    // level1_quote_update_model->ask_price
    cJSON *ask_price = cJSON_GetObjectItemCaseSensitive(level1_quote_update_modelJSON, "ask_price");
    if (cJSON_IsNull(ask_price)) {
        ask_price = NULL;
    }
    if (ask_price) { 
    if(!cJSON_IsNumber(ask_price))
    {
    goto end; //Numeric
    }
    }

    // level1_quote_update_model->bid_price
    cJSON *bid_price = cJSON_GetObjectItemCaseSensitive(level1_quote_update_modelJSON, "bid_price");
    if (cJSON_IsNull(bid_price)) {
        bid_price = NULL;
    }
    if (bid_price) { 
    if(!cJSON_IsNumber(bid_price))
    {
    goto end; //Numeric
    }
    }

    // level1_quote_update_model->bid_size
    cJSON *bid_size = cJSON_GetObjectItemCaseSensitive(level1_quote_update_modelJSON, "bid_size");
    if (cJSON_IsNull(bid_size)) {
        bid_size = NULL;
    }
    if (bid_size) { 
    if(!cJSON_IsNumber(bid_size))
    {
    goto end; //Numeric
    }
    }


    level1_quote_update_model_local_var = level1_quote_update_model_create_internal (
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        timestamp_nanos ? timestamp_nanos->valuedouble : 0,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        is_symbol_available ? is_symbol_available->valueint : 0,
        is_pre_post_market_session ? is_pre_post_market_session->valueint : 0,
        ask_size ? ask_size->valuedouble : 0,
        ask_price ? ask_price->valuedouble : 0,
        bid_price ? bid_price->valuedouble : 0,
        bid_size ? bid_size->valuedouble : 0
        );

    return level1_quote_update_model_local_var;
end:
    return NULL;

}
