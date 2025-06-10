#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_order_book_depth.h"



static v1_order_book_depth_t *v1_order_book_depth_create_internal(
    char *symbol_id,
    char *time_exchange,
    char *time_coinapi,
    long ask_levels,
    long bid_levels,
    double ask_depth,
    double bid_depth
    ) {
    v1_order_book_depth_t *v1_order_book_depth_local_var = malloc(sizeof(v1_order_book_depth_t));
    if (!v1_order_book_depth_local_var) {
        return NULL;
    }
    v1_order_book_depth_local_var->symbol_id = symbol_id;
    v1_order_book_depth_local_var->time_exchange = time_exchange;
    v1_order_book_depth_local_var->time_coinapi = time_coinapi;
    v1_order_book_depth_local_var->ask_levels = ask_levels;
    v1_order_book_depth_local_var->bid_levels = bid_levels;
    v1_order_book_depth_local_var->ask_depth = ask_depth;
    v1_order_book_depth_local_var->bid_depth = bid_depth;

    v1_order_book_depth_local_var->_library_owned = 1;
    return v1_order_book_depth_local_var;
}

__attribute__((deprecated)) v1_order_book_depth_t *v1_order_book_depth_create(
    char *symbol_id,
    char *time_exchange,
    char *time_coinapi,
    long ask_levels,
    long bid_levels,
    double ask_depth,
    double bid_depth
    ) {
    return v1_order_book_depth_create_internal (
        symbol_id,
        time_exchange,
        time_coinapi,
        ask_levels,
        bid_levels,
        ask_depth,
        bid_depth
        );
}

void v1_order_book_depth_free(v1_order_book_depth_t *v1_order_book_depth) {
    if(NULL == v1_order_book_depth){
        return ;
    }
    if(v1_order_book_depth->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_order_book_depth_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_order_book_depth->symbol_id) {
        free(v1_order_book_depth->symbol_id);
        v1_order_book_depth->symbol_id = NULL;
    }
    if (v1_order_book_depth->time_exchange) {
        free(v1_order_book_depth->time_exchange);
        v1_order_book_depth->time_exchange = NULL;
    }
    if (v1_order_book_depth->time_coinapi) {
        free(v1_order_book_depth->time_coinapi);
        v1_order_book_depth->time_coinapi = NULL;
    }
    free(v1_order_book_depth);
}

cJSON *v1_order_book_depth_convertToJSON(v1_order_book_depth_t *v1_order_book_depth) {
    cJSON *item = cJSON_CreateObject();

    // v1_order_book_depth->symbol_id
    if(v1_order_book_depth->symbol_id) {
    if(cJSON_AddStringToObject(item, "symbol_id", v1_order_book_depth->symbol_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_order_book_depth->time_exchange
    if(v1_order_book_depth->time_exchange) {
    if(cJSON_AddStringToObject(item, "time_exchange", v1_order_book_depth->time_exchange) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_order_book_depth->time_coinapi
    if(v1_order_book_depth->time_coinapi) {
    if(cJSON_AddStringToObject(item, "time_coinapi", v1_order_book_depth->time_coinapi) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_order_book_depth->ask_levels
    if(v1_order_book_depth->ask_levels) {
    if(cJSON_AddNumberToObject(item, "ask_levels", v1_order_book_depth->ask_levels) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_order_book_depth->bid_levels
    if(v1_order_book_depth->bid_levels) {
    if(cJSON_AddNumberToObject(item, "bid_levels", v1_order_book_depth->bid_levels) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_order_book_depth->ask_depth
    if(v1_order_book_depth->ask_depth) {
    if(cJSON_AddNumberToObject(item, "ask_depth", v1_order_book_depth->ask_depth) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_order_book_depth->bid_depth
    if(v1_order_book_depth->bid_depth) {
    if(cJSON_AddNumberToObject(item, "bid_depth", v1_order_book_depth->bid_depth) == NULL) {
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

v1_order_book_depth_t *v1_order_book_depth_parseFromJSON(cJSON *v1_order_book_depthJSON){

    v1_order_book_depth_t *v1_order_book_depth_local_var = NULL;

    // v1_order_book_depth->symbol_id
    cJSON *symbol_id = cJSON_GetObjectItemCaseSensitive(v1_order_book_depthJSON, "symbol_id");
    if (cJSON_IsNull(symbol_id)) {
        symbol_id = NULL;
    }
    if (symbol_id) { 
    if(!cJSON_IsString(symbol_id) && !cJSON_IsNull(symbol_id))
    {
    goto end; //String
    }
    }

    // v1_order_book_depth->time_exchange
    cJSON *time_exchange = cJSON_GetObjectItemCaseSensitive(v1_order_book_depthJSON, "time_exchange");
    if (cJSON_IsNull(time_exchange)) {
        time_exchange = NULL;
    }
    if (time_exchange) { 
    if(!cJSON_IsString(time_exchange) && !cJSON_IsNull(time_exchange))
    {
    goto end; //DateTime
    }
    }

    // v1_order_book_depth->time_coinapi
    cJSON *time_coinapi = cJSON_GetObjectItemCaseSensitive(v1_order_book_depthJSON, "time_coinapi");
    if (cJSON_IsNull(time_coinapi)) {
        time_coinapi = NULL;
    }
    if (time_coinapi) { 
    if(!cJSON_IsString(time_coinapi) && !cJSON_IsNull(time_coinapi))
    {
    goto end; //DateTime
    }
    }

    // v1_order_book_depth->ask_levels
    cJSON *ask_levels = cJSON_GetObjectItemCaseSensitive(v1_order_book_depthJSON, "ask_levels");
    if (cJSON_IsNull(ask_levels)) {
        ask_levels = NULL;
    }
    if (ask_levels) { 
    if(!cJSON_IsNumber(ask_levels))
    {
    goto end; //Numeric
    }
    }

    // v1_order_book_depth->bid_levels
    cJSON *bid_levels = cJSON_GetObjectItemCaseSensitive(v1_order_book_depthJSON, "bid_levels");
    if (cJSON_IsNull(bid_levels)) {
        bid_levels = NULL;
    }
    if (bid_levels) { 
    if(!cJSON_IsNumber(bid_levels))
    {
    goto end; //Numeric
    }
    }

    // v1_order_book_depth->ask_depth
    cJSON *ask_depth = cJSON_GetObjectItemCaseSensitive(v1_order_book_depthJSON, "ask_depth");
    if (cJSON_IsNull(ask_depth)) {
        ask_depth = NULL;
    }
    if (ask_depth) { 
    if(!cJSON_IsNumber(ask_depth))
    {
    goto end; //Numeric
    }
    }

    // v1_order_book_depth->bid_depth
    cJSON *bid_depth = cJSON_GetObjectItemCaseSensitive(v1_order_book_depthJSON, "bid_depth");
    if (cJSON_IsNull(bid_depth)) {
        bid_depth = NULL;
    }
    if (bid_depth) { 
    if(!cJSON_IsNumber(bid_depth))
    {
    goto end; //Numeric
    }
    }


    v1_order_book_depth_local_var = v1_order_book_depth_create_internal (
        symbol_id && !cJSON_IsNull(symbol_id) ? strdup(symbol_id->valuestring) : NULL,
        time_exchange && !cJSON_IsNull(time_exchange) ? strdup(time_exchange->valuestring) : NULL,
        time_coinapi && !cJSON_IsNull(time_coinapi) ? strdup(time_coinapi->valuestring) : NULL,
        ask_levels ? ask_levels->valuedouble : 0,
        bid_levels ? bid_levels->valuedouble : 0,
        ask_depth ? ask_depth->valuedouble : 0,
        bid_depth ? bid_depth->valuedouble : 0
        );

    return v1_order_book_depth_local_var;
end:
    return NULL;

}
