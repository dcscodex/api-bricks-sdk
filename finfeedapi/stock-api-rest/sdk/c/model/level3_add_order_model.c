#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "level3_add_order_model.h"



static level3_add_order_model_t *level3_add_order_model_create_internal(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int is_side_buy,
    int size,
    double price,
    long order_id
    ) {
    level3_add_order_model_t *level3_add_order_model_local_var = malloc(sizeof(level3_add_order_model_t));
    if (!level3_add_order_model_local_var) {
        return NULL;
    }
    level3_add_order_model_local_var->symbol = symbol;
    level3_add_order_model_local_var->timestamp_nanos = timestamp_nanos;
    level3_add_order_model_local_var->timestamp = timestamp;
    level3_add_order_model_local_var->is_side_buy = is_side_buy;
    level3_add_order_model_local_var->size = size;
    level3_add_order_model_local_var->price = price;
    level3_add_order_model_local_var->order_id = order_id;

    level3_add_order_model_local_var->_library_owned = 1;
    return level3_add_order_model_local_var;
}

__attribute__((deprecated)) level3_add_order_model_t *level3_add_order_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int is_side_buy,
    int size,
    double price,
    long order_id
    ) {
    return level3_add_order_model_create_internal (
        symbol,
        timestamp_nanos,
        timestamp,
        is_side_buy,
        size,
        price,
        order_id
        );
}

void level3_add_order_model_free(level3_add_order_model_t *level3_add_order_model) {
    if(NULL == level3_add_order_model){
        return ;
    }
    if(level3_add_order_model->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "level3_add_order_model_free");
        return ;
    }
    listEntry_t *listEntry;
    if (level3_add_order_model->symbol) {
        free(level3_add_order_model->symbol);
        level3_add_order_model->symbol = NULL;
    }
    if (level3_add_order_model->timestamp) {
        free(level3_add_order_model->timestamp);
        level3_add_order_model->timestamp = NULL;
    }
    free(level3_add_order_model);
}

cJSON *level3_add_order_model_convertToJSON(level3_add_order_model_t *level3_add_order_model) {
    cJSON *item = cJSON_CreateObject();

    // level3_add_order_model->symbol
    if(level3_add_order_model->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", level3_add_order_model->symbol) == NULL) {
    goto fail; //String
    }
    }


    // level3_add_order_model->timestamp_nanos
    if(level3_add_order_model->timestamp_nanos) {
    if(cJSON_AddNumberToObject(item, "timestamp_nanos", level3_add_order_model->timestamp_nanos) == NULL) {
    goto fail; //Numeric
    }
    }


    // level3_add_order_model->timestamp
    if(level3_add_order_model->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", level3_add_order_model->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // level3_add_order_model->is_side_buy
    if(level3_add_order_model->is_side_buy) {
    if(cJSON_AddBoolToObject(item, "is_side_buy", level3_add_order_model->is_side_buy) == NULL) {
    goto fail; //Bool
    }
    }


    // level3_add_order_model->size
    if(level3_add_order_model->size) {
    if(cJSON_AddNumberToObject(item, "size", level3_add_order_model->size) == NULL) {
    goto fail; //Numeric
    }
    }


    // level3_add_order_model->price
    if(level3_add_order_model->price) {
    if(cJSON_AddNumberToObject(item, "price", level3_add_order_model->price) == NULL) {
    goto fail; //Numeric
    }
    }


    // level3_add_order_model->order_id
    if(level3_add_order_model->order_id) {
    if(cJSON_AddNumberToObject(item, "order_id", level3_add_order_model->order_id) == NULL) {
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

level3_add_order_model_t *level3_add_order_model_parseFromJSON(cJSON *level3_add_order_modelJSON){

    level3_add_order_model_t *level3_add_order_model_local_var = NULL;

    // level3_add_order_model->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(level3_add_order_modelJSON, "symbol");
    if (cJSON_IsNull(symbol)) {
        symbol = NULL;
    }
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // level3_add_order_model->timestamp_nanos
    cJSON *timestamp_nanos = cJSON_GetObjectItemCaseSensitive(level3_add_order_modelJSON, "timestamp_nanos");
    if (cJSON_IsNull(timestamp_nanos)) {
        timestamp_nanos = NULL;
    }
    if (timestamp_nanos) { 
    if(!cJSON_IsNumber(timestamp_nanos))
    {
    goto end; //Numeric
    }
    }

    // level3_add_order_model->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(level3_add_order_modelJSON, "timestamp");
    if (cJSON_IsNull(timestamp)) {
        timestamp = NULL;
    }
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //DateTime
    }
    }

    // level3_add_order_model->is_side_buy
    cJSON *is_side_buy = cJSON_GetObjectItemCaseSensitive(level3_add_order_modelJSON, "is_side_buy");
    if (cJSON_IsNull(is_side_buy)) {
        is_side_buy = NULL;
    }
    if (is_side_buy) { 
    if(!cJSON_IsBool(is_side_buy))
    {
    goto end; //Bool
    }
    }

    // level3_add_order_model->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(level3_add_order_modelJSON, "size");
    if (cJSON_IsNull(size)) {
        size = NULL;
    }
    if (size) { 
    if(!cJSON_IsNumber(size))
    {
    goto end; //Numeric
    }
    }

    // level3_add_order_model->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(level3_add_order_modelJSON, "price");
    if (cJSON_IsNull(price)) {
        price = NULL;
    }
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }

    // level3_add_order_model->order_id
    cJSON *order_id = cJSON_GetObjectItemCaseSensitive(level3_add_order_modelJSON, "order_id");
    if (cJSON_IsNull(order_id)) {
        order_id = NULL;
    }
    if (order_id) { 
    if(!cJSON_IsNumber(order_id))
    {
    goto end; //Numeric
    }
    }


    level3_add_order_model_local_var = level3_add_order_model_create_internal (
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        timestamp_nanos ? timestamp_nanos->valuedouble : 0,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        is_side_buy ? is_side_buy->valueint : 0,
        size ? size->valuedouble : 0,
        price ? price->valuedouble : 0,
        order_id ? order_id->valuedouble : 0
        );

    return level3_add_order_model_local_var;
end:
    return NULL;

}
