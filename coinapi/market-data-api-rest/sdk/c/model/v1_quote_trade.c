#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_quote_trade.h"



static v1_quote_trade_t *v1_quote_trade_create_internal(
    char *symbol_id,
    char *time_exchange,
    char *time_coinapi,
    double ask_price,
    double ask_size,
    double bid_price,
    double bid_size,
    v1_last_trade_t *last_trade
    ) {
    v1_quote_trade_t *v1_quote_trade_local_var = malloc(sizeof(v1_quote_trade_t));
    if (!v1_quote_trade_local_var) {
        return NULL;
    }
    v1_quote_trade_local_var->symbol_id = symbol_id;
    v1_quote_trade_local_var->time_exchange = time_exchange;
    v1_quote_trade_local_var->time_coinapi = time_coinapi;
    v1_quote_trade_local_var->ask_price = ask_price;
    v1_quote_trade_local_var->ask_size = ask_size;
    v1_quote_trade_local_var->bid_price = bid_price;
    v1_quote_trade_local_var->bid_size = bid_size;
    v1_quote_trade_local_var->last_trade = last_trade;

    v1_quote_trade_local_var->_library_owned = 1;
    return v1_quote_trade_local_var;
}

__attribute__((deprecated)) v1_quote_trade_t *v1_quote_trade_create(
    char *symbol_id,
    char *time_exchange,
    char *time_coinapi,
    double ask_price,
    double ask_size,
    double bid_price,
    double bid_size,
    v1_last_trade_t *last_trade
    ) {
    return v1_quote_trade_create_internal (
        symbol_id,
        time_exchange,
        time_coinapi,
        ask_price,
        ask_size,
        bid_price,
        bid_size,
        last_trade
        );
}

void v1_quote_trade_free(v1_quote_trade_t *v1_quote_trade) {
    if(NULL == v1_quote_trade){
        return ;
    }
    if(v1_quote_trade->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_quote_trade_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_quote_trade->symbol_id) {
        free(v1_quote_trade->symbol_id);
        v1_quote_trade->symbol_id = NULL;
    }
    if (v1_quote_trade->time_exchange) {
        free(v1_quote_trade->time_exchange);
        v1_quote_trade->time_exchange = NULL;
    }
    if (v1_quote_trade->time_coinapi) {
        free(v1_quote_trade->time_coinapi);
        v1_quote_trade->time_coinapi = NULL;
    }
    if (v1_quote_trade->last_trade) {
        v1_last_trade_free(v1_quote_trade->last_trade);
        v1_quote_trade->last_trade = NULL;
    }
    free(v1_quote_trade);
}

cJSON *v1_quote_trade_convertToJSON(v1_quote_trade_t *v1_quote_trade) {
    cJSON *item = cJSON_CreateObject();

    // v1_quote_trade->symbol_id
    if(v1_quote_trade->symbol_id) {
    if(cJSON_AddStringToObject(item, "symbol_id", v1_quote_trade->symbol_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_quote_trade->time_exchange
    if(v1_quote_trade->time_exchange) {
    if(cJSON_AddStringToObject(item, "time_exchange", v1_quote_trade->time_exchange) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_quote_trade->time_coinapi
    if(v1_quote_trade->time_coinapi) {
    if(cJSON_AddStringToObject(item, "time_coinapi", v1_quote_trade->time_coinapi) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_quote_trade->ask_price
    if(v1_quote_trade->ask_price) {
    if(cJSON_AddNumberToObject(item, "ask_price", v1_quote_trade->ask_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_quote_trade->ask_size
    if(v1_quote_trade->ask_size) {
    if(cJSON_AddNumberToObject(item, "ask_size", v1_quote_trade->ask_size) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_quote_trade->bid_price
    if(v1_quote_trade->bid_price) {
    if(cJSON_AddNumberToObject(item, "bid_price", v1_quote_trade->bid_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_quote_trade->bid_size
    if(v1_quote_trade->bid_size) {
    if(cJSON_AddNumberToObject(item, "bid_size", v1_quote_trade->bid_size) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_quote_trade->last_trade
    if(v1_quote_trade->last_trade) {
    cJSON *last_trade_local_JSON = v1_last_trade_convertToJSON(v1_quote_trade->last_trade);
    if(last_trade_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "last_trade", last_trade_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

v1_quote_trade_t *v1_quote_trade_parseFromJSON(cJSON *v1_quote_tradeJSON){

    v1_quote_trade_t *v1_quote_trade_local_var = NULL;

    // define the local variable for v1_quote_trade->last_trade
    v1_last_trade_t *last_trade_local_nonprim = NULL;

    // v1_quote_trade->symbol_id
    cJSON *symbol_id = cJSON_GetObjectItemCaseSensitive(v1_quote_tradeJSON, "symbol_id");
    if (cJSON_IsNull(symbol_id)) {
        symbol_id = NULL;
    }
    if (symbol_id) { 
    if(!cJSON_IsString(symbol_id) && !cJSON_IsNull(symbol_id))
    {
    goto end; //String
    }
    }

    // v1_quote_trade->time_exchange
    cJSON *time_exchange = cJSON_GetObjectItemCaseSensitive(v1_quote_tradeJSON, "time_exchange");
    if (cJSON_IsNull(time_exchange)) {
        time_exchange = NULL;
    }
    if (time_exchange) { 
    if(!cJSON_IsString(time_exchange) && !cJSON_IsNull(time_exchange))
    {
    goto end; //DateTime
    }
    }

    // v1_quote_trade->time_coinapi
    cJSON *time_coinapi = cJSON_GetObjectItemCaseSensitive(v1_quote_tradeJSON, "time_coinapi");
    if (cJSON_IsNull(time_coinapi)) {
        time_coinapi = NULL;
    }
    if (time_coinapi) { 
    if(!cJSON_IsString(time_coinapi) && !cJSON_IsNull(time_coinapi))
    {
    goto end; //DateTime
    }
    }

    // v1_quote_trade->ask_price
    cJSON *ask_price = cJSON_GetObjectItemCaseSensitive(v1_quote_tradeJSON, "ask_price");
    if (cJSON_IsNull(ask_price)) {
        ask_price = NULL;
    }
    if (ask_price) { 
    if(!cJSON_IsNumber(ask_price))
    {
    goto end; //Numeric
    }
    }

    // v1_quote_trade->ask_size
    cJSON *ask_size = cJSON_GetObjectItemCaseSensitive(v1_quote_tradeJSON, "ask_size");
    if (cJSON_IsNull(ask_size)) {
        ask_size = NULL;
    }
    if (ask_size) { 
    if(!cJSON_IsNumber(ask_size))
    {
    goto end; //Numeric
    }
    }

    // v1_quote_trade->bid_price
    cJSON *bid_price = cJSON_GetObjectItemCaseSensitive(v1_quote_tradeJSON, "bid_price");
    if (cJSON_IsNull(bid_price)) {
        bid_price = NULL;
    }
    if (bid_price) { 
    if(!cJSON_IsNumber(bid_price))
    {
    goto end; //Numeric
    }
    }

    // v1_quote_trade->bid_size
    cJSON *bid_size = cJSON_GetObjectItemCaseSensitive(v1_quote_tradeJSON, "bid_size");
    if (cJSON_IsNull(bid_size)) {
        bid_size = NULL;
    }
    if (bid_size) { 
    if(!cJSON_IsNumber(bid_size))
    {
    goto end; //Numeric
    }
    }

    // v1_quote_trade->last_trade
    cJSON *last_trade = cJSON_GetObjectItemCaseSensitive(v1_quote_tradeJSON, "last_trade");
    if (cJSON_IsNull(last_trade)) {
        last_trade = NULL;
    }
    if (last_trade) { 
    last_trade_local_nonprim = v1_last_trade_parseFromJSON(last_trade); //nonprimitive
    }


    v1_quote_trade_local_var = v1_quote_trade_create_internal (
        symbol_id && !cJSON_IsNull(symbol_id) ? strdup(symbol_id->valuestring) : NULL,
        time_exchange && !cJSON_IsNull(time_exchange) ? strdup(time_exchange->valuestring) : NULL,
        time_coinapi && !cJSON_IsNull(time_coinapi) ? strdup(time_coinapi->valuestring) : NULL,
        ask_price ? ask_price->valuedouble : 0,
        ask_size ? ask_size->valuedouble : 0,
        bid_price ? bid_price->valuedouble : 0,
        bid_size ? bid_size->valuedouble : 0,
        last_trade ? last_trade_local_nonprim : NULL
        );

    return v1_quote_trade_local_var;
end:
    if (last_trade_local_nonprim) {
        v1_last_trade_free(last_trade_local_nonprim);
        last_trade_local_nonprim = NULL;
    }
    return NULL;

}
