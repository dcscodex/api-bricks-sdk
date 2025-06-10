#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_order_book_base.h"



static v1_order_book_base_t *v1_order_book_base_create_internal(
    char *symbol_id,
    char *time_exchange,
    char *time_coinapi,
    any_type_t *asks,
    any_type_t *bids
    ) {
    v1_order_book_base_t *v1_order_book_base_local_var = malloc(sizeof(v1_order_book_base_t));
    if (!v1_order_book_base_local_var) {
        return NULL;
    }
    v1_order_book_base_local_var->symbol_id = symbol_id;
    v1_order_book_base_local_var->time_exchange = time_exchange;
    v1_order_book_base_local_var->time_coinapi = time_coinapi;
    v1_order_book_base_local_var->asks = asks;
    v1_order_book_base_local_var->bids = bids;

    v1_order_book_base_local_var->_library_owned = 1;
    return v1_order_book_base_local_var;
}

__attribute__((deprecated)) v1_order_book_base_t *v1_order_book_base_create(
    char *symbol_id,
    char *time_exchange,
    char *time_coinapi,
    any_type_t *asks,
    any_type_t *bids
    ) {
    return v1_order_book_base_create_internal (
        symbol_id,
        time_exchange,
        time_coinapi,
        asks,
        bids
        );
}

void v1_order_book_base_free(v1_order_book_base_t *v1_order_book_base) {
    if(NULL == v1_order_book_base){
        return ;
    }
    if(v1_order_book_base->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_order_book_base_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_order_book_base->symbol_id) {
        free(v1_order_book_base->symbol_id);
        v1_order_book_base->symbol_id = NULL;
    }
    if (v1_order_book_base->time_exchange) {
        free(v1_order_book_base->time_exchange);
        v1_order_book_base->time_exchange = NULL;
    }
    if (v1_order_book_base->time_coinapi) {
        free(v1_order_book_base->time_coinapi);
        v1_order_book_base->time_coinapi = NULL;
    }
    if (v1_order_book_base->asks) {
        _free(v1_order_book_base->asks);
        v1_order_book_base->asks = NULL;
    }
    if (v1_order_book_base->bids) {
        _free(v1_order_book_base->bids);
        v1_order_book_base->bids = NULL;
    }
    free(v1_order_book_base);
}

cJSON *v1_order_book_base_convertToJSON(v1_order_book_base_t *v1_order_book_base) {
    cJSON *item = cJSON_CreateObject();

    // v1_order_book_base->symbol_id
    if(v1_order_book_base->symbol_id) {
    if(cJSON_AddStringToObject(item, "symbol_id", v1_order_book_base->symbol_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_order_book_base->time_exchange
    if(v1_order_book_base->time_exchange) {
    if(cJSON_AddStringToObject(item, "time_exchange", v1_order_book_base->time_exchange) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_order_book_base->time_coinapi
    if(v1_order_book_base->time_coinapi) {
    if(cJSON_AddStringToObject(item, "time_coinapi", v1_order_book_base->time_coinapi) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_order_book_base->asks
    if(v1_order_book_base->asks) {
    cJSON *asks_local_JSON = _convertToJSON(v1_order_book_base->asks);
    if(asks_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "asks", asks_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }
    }


    // v1_order_book_base->bids
    if(v1_order_book_base->bids) {
    cJSON *bids_local_JSON = _convertToJSON(v1_order_book_base->bids);
    if(bids_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "bids", bids_local_JSON);
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

v1_order_book_base_t *v1_order_book_base_parseFromJSON(cJSON *v1_order_book_baseJSON){

    v1_order_book_base_t *v1_order_book_base_local_var = NULL;

    // define the local variable for v1_order_book_base->asks
    _t *asks_local_nonprim = NULL;

    // define the local variable for v1_order_book_base->bids
    _t *bids_local_nonprim = NULL;

    // v1_order_book_base->symbol_id
    cJSON *symbol_id = cJSON_GetObjectItemCaseSensitive(v1_order_book_baseJSON, "symbol_id");
    if (cJSON_IsNull(symbol_id)) {
        symbol_id = NULL;
    }
    if (symbol_id) { 
    if(!cJSON_IsString(symbol_id) && !cJSON_IsNull(symbol_id))
    {
    goto end; //String
    }
    }

    // v1_order_book_base->time_exchange
    cJSON *time_exchange = cJSON_GetObjectItemCaseSensitive(v1_order_book_baseJSON, "time_exchange");
    if (cJSON_IsNull(time_exchange)) {
        time_exchange = NULL;
    }
    if (time_exchange) { 
    if(!cJSON_IsString(time_exchange) && !cJSON_IsNull(time_exchange))
    {
    goto end; //DateTime
    }
    }

    // v1_order_book_base->time_coinapi
    cJSON *time_coinapi = cJSON_GetObjectItemCaseSensitive(v1_order_book_baseJSON, "time_coinapi");
    if (cJSON_IsNull(time_coinapi)) {
        time_coinapi = NULL;
    }
    if (time_coinapi) { 
    if(!cJSON_IsString(time_coinapi) && !cJSON_IsNull(time_coinapi))
    {
    goto end; //DateTime
    }
    }

    // v1_order_book_base->asks
    cJSON *asks = cJSON_GetObjectItemCaseSensitive(v1_order_book_baseJSON, "asks");
    if (cJSON_IsNull(asks)) {
        asks = NULL;
    }
    if (asks) { 
    asks_local_nonprim = _parseFromJSON(asks); //custom
    }

    // v1_order_book_base->bids
    cJSON *bids = cJSON_GetObjectItemCaseSensitive(v1_order_book_baseJSON, "bids");
    if (cJSON_IsNull(bids)) {
        bids = NULL;
    }
    if (bids) { 
    bids_local_nonprim = _parseFromJSON(bids); //custom
    }


    v1_order_book_base_local_var = v1_order_book_base_create_internal (
        symbol_id && !cJSON_IsNull(symbol_id) ? strdup(symbol_id->valuestring) : NULL,
        time_exchange && !cJSON_IsNull(time_exchange) ? strdup(time_exchange->valuestring) : NULL,
        time_coinapi && !cJSON_IsNull(time_coinapi) ? strdup(time_coinapi->valuestring) : NULL,
        asks ? asks_local_nonprim : NULL,
        bids ? bids_local_nonprim : NULL
        );

    return v1_order_book_base_local_var;
end:
    if (asks_local_nonprim) {
        _free(asks_local_nonprim);
        asks_local_nonprim = NULL;
    }
    if (bids_local_nonprim) {
        _free(bids_local_nonprim);
        bids_local_nonprim = NULL;
    }
    return NULL;

}
