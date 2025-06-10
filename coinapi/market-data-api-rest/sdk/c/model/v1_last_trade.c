#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_last_trade.h"



static v1_last_trade_t *v1_last_trade_create_internal(
    char *time_exchange,
    char *time_coinapi,
    char *uuid,
    double price,
    double size,
    char *taker_side
    ) {
    v1_last_trade_t *v1_last_trade_local_var = malloc(sizeof(v1_last_trade_t));
    if (!v1_last_trade_local_var) {
        return NULL;
    }
    v1_last_trade_local_var->time_exchange = time_exchange;
    v1_last_trade_local_var->time_coinapi = time_coinapi;
    v1_last_trade_local_var->uuid = uuid;
    v1_last_trade_local_var->price = price;
    v1_last_trade_local_var->size = size;
    v1_last_trade_local_var->taker_side = taker_side;

    v1_last_trade_local_var->_library_owned = 1;
    return v1_last_trade_local_var;
}

__attribute__((deprecated)) v1_last_trade_t *v1_last_trade_create(
    char *time_exchange,
    char *time_coinapi,
    char *uuid,
    double price,
    double size,
    char *taker_side
    ) {
    return v1_last_trade_create_internal (
        time_exchange,
        time_coinapi,
        uuid,
        price,
        size,
        taker_side
        );
}

void v1_last_trade_free(v1_last_trade_t *v1_last_trade) {
    if(NULL == v1_last_trade){
        return ;
    }
    if(v1_last_trade->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_last_trade_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_last_trade->time_exchange) {
        free(v1_last_trade->time_exchange);
        v1_last_trade->time_exchange = NULL;
    }
    if (v1_last_trade->time_coinapi) {
        free(v1_last_trade->time_coinapi);
        v1_last_trade->time_coinapi = NULL;
    }
    if (v1_last_trade->uuid) {
        free(v1_last_trade->uuid);
        v1_last_trade->uuid = NULL;
    }
    if (v1_last_trade->taker_side) {
        free(v1_last_trade->taker_side);
        v1_last_trade->taker_side = NULL;
    }
    free(v1_last_trade);
}

cJSON *v1_last_trade_convertToJSON(v1_last_trade_t *v1_last_trade) {
    cJSON *item = cJSON_CreateObject();

    // v1_last_trade->time_exchange
    if(v1_last_trade->time_exchange) {
    if(cJSON_AddStringToObject(item, "time_exchange", v1_last_trade->time_exchange) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_last_trade->time_coinapi
    if(v1_last_trade->time_coinapi) {
    if(cJSON_AddStringToObject(item, "time_coinapi", v1_last_trade->time_coinapi) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_last_trade->uuid
    if(v1_last_trade->uuid) {
    if(cJSON_AddStringToObject(item, "uuid", v1_last_trade->uuid) == NULL) {
    goto fail; //String
    }
    }


    // v1_last_trade->price
    if(v1_last_trade->price) {
    if(cJSON_AddNumberToObject(item, "price", v1_last_trade->price) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_last_trade->size
    if(v1_last_trade->size) {
    if(cJSON_AddNumberToObject(item, "size", v1_last_trade->size) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_last_trade->taker_side
    if(v1_last_trade->taker_side) {
    if(cJSON_AddStringToObject(item, "taker_side", v1_last_trade->taker_side) == NULL) {
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

v1_last_trade_t *v1_last_trade_parseFromJSON(cJSON *v1_last_tradeJSON){

    v1_last_trade_t *v1_last_trade_local_var = NULL;

    // v1_last_trade->time_exchange
    cJSON *time_exchange = cJSON_GetObjectItemCaseSensitive(v1_last_tradeJSON, "time_exchange");
    if (cJSON_IsNull(time_exchange)) {
        time_exchange = NULL;
    }
    if (time_exchange) { 
    if(!cJSON_IsString(time_exchange) && !cJSON_IsNull(time_exchange))
    {
    goto end; //DateTime
    }
    }

    // v1_last_trade->time_coinapi
    cJSON *time_coinapi = cJSON_GetObjectItemCaseSensitive(v1_last_tradeJSON, "time_coinapi");
    if (cJSON_IsNull(time_coinapi)) {
        time_coinapi = NULL;
    }
    if (time_coinapi) { 
    if(!cJSON_IsString(time_coinapi) && !cJSON_IsNull(time_coinapi))
    {
    goto end; //DateTime
    }
    }

    // v1_last_trade->uuid
    cJSON *uuid = cJSON_GetObjectItemCaseSensitive(v1_last_tradeJSON, "uuid");
    if (cJSON_IsNull(uuid)) {
        uuid = NULL;
    }
    if (uuid) { 
    if(!cJSON_IsString(uuid) && !cJSON_IsNull(uuid))
    {
    goto end; //String
    }
    }

    // v1_last_trade->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(v1_last_tradeJSON, "price");
    if (cJSON_IsNull(price)) {
        price = NULL;
    }
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }

    // v1_last_trade->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(v1_last_tradeJSON, "size");
    if (cJSON_IsNull(size)) {
        size = NULL;
    }
    if (size) { 
    if(!cJSON_IsNumber(size))
    {
    goto end; //Numeric
    }
    }

    // v1_last_trade->taker_side
    cJSON *taker_side = cJSON_GetObjectItemCaseSensitive(v1_last_tradeJSON, "taker_side");
    if (cJSON_IsNull(taker_side)) {
        taker_side = NULL;
    }
    if (taker_side) { 
    if(!cJSON_IsString(taker_side) && !cJSON_IsNull(taker_side))
    {
    goto end; //String
    }
    }


    v1_last_trade_local_var = v1_last_trade_create_internal (
        time_exchange && !cJSON_IsNull(time_exchange) ? strdup(time_exchange->valuestring) : NULL,
        time_coinapi && !cJSON_IsNull(time_coinapi) ? strdup(time_coinapi->valuestring) : NULL,
        uuid && !cJSON_IsNull(uuid) ? strdup(uuid->valuestring) : NULL,
        price ? price->valuedouble : 0,
        size ? size->valuedouble : 0,
        taker_side && !cJSON_IsNull(taker_side) ? strdup(taker_side->valuestring) : NULL
        );

    return v1_last_trade_local_var;
end:
    return NULL;

}
