#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "level3_modify_order_model.h"



static level3_modify_order_model_t *level3_modify_order_model_create_internal(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    long order_id_reference,
    int is_priority_reset,
    int size,
    double price
    ) {
    level3_modify_order_model_t *level3_modify_order_model_local_var = malloc(sizeof(level3_modify_order_model_t));
    if (!level3_modify_order_model_local_var) {
        return NULL;
    }
    level3_modify_order_model_local_var->symbol = symbol;
    level3_modify_order_model_local_var->timestamp_nanos = timestamp_nanos;
    level3_modify_order_model_local_var->timestamp = timestamp;
    level3_modify_order_model_local_var->order_id_reference = order_id_reference;
    level3_modify_order_model_local_var->is_priority_reset = is_priority_reset;
    level3_modify_order_model_local_var->size = size;
    level3_modify_order_model_local_var->price = price;

    level3_modify_order_model_local_var->_library_owned = 1;
    return level3_modify_order_model_local_var;
}

__attribute__((deprecated)) level3_modify_order_model_t *level3_modify_order_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    long order_id_reference,
    int is_priority_reset,
    int size,
    double price
    ) {
    return level3_modify_order_model_create_internal (
        symbol,
        timestamp_nanos,
        timestamp,
        order_id_reference,
        is_priority_reset,
        size,
        price
        );
}

void level3_modify_order_model_free(level3_modify_order_model_t *level3_modify_order_model) {
    if(NULL == level3_modify_order_model){
        return ;
    }
    if(level3_modify_order_model->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "level3_modify_order_model_free");
        return ;
    }
    listEntry_t *listEntry;
    if (level3_modify_order_model->symbol) {
        free(level3_modify_order_model->symbol);
        level3_modify_order_model->symbol = NULL;
    }
    if (level3_modify_order_model->timestamp) {
        free(level3_modify_order_model->timestamp);
        level3_modify_order_model->timestamp = NULL;
    }
    free(level3_modify_order_model);
}

cJSON *level3_modify_order_model_convertToJSON(level3_modify_order_model_t *level3_modify_order_model) {
    cJSON *item = cJSON_CreateObject();

    // level3_modify_order_model->symbol
    if(level3_modify_order_model->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", level3_modify_order_model->symbol) == NULL) {
    goto fail; //String
    }
    }


    // level3_modify_order_model->timestamp_nanos
    if(level3_modify_order_model->timestamp_nanos) {
    if(cJSON_AddNumberToObject(item, "timestamp_nanos", level3_modify_order_model->timestamp_nanos) == NULL) {
    goto fail; //Numeric
    }
    }


    // level3_modify_order_model->timestamp
    if(level3_modify_order_model->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", level3_modify_order_model->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // level3_modify_order_model->order_id_reference
    if(level3_modify_order_model->order_id_reference) {
    if(cJSON_AddNumberToObject(item, "order_id_reference", level3_modify_order_model->order_id_reference) == NULL) {
    goto fail; //Numeric
    }
    }


    // level3_modify_order_model->is_priority_reset
    if(level3_modify_order_model->is_priority_reset) {
    if(cJSON_AddBoolToObject(item, "is_priority_reset", level3_modify_order_model->is_priority_reset) == NULL) {
    goto fail; //Bool
    }
    }


    // level3_modify_order_model->size
    if(level3_modify_order_model->size) {
    if(cJSON_AddNumberToObject(item, "size", level3_modify_order_model->size) == NULL) {
    goto fail; //Numeric
    }
    }


    // level3_modify_order_model->price
    if(level3_modify_order_model->price) {
    if(cJSON_AddNumberToObject(item, "price", level3_modify_order_model->price) == NULL) {
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

level3_modify_order_model_t *level3_modify_order_model_parseFromJSON(cJSON *level3_modify_order_modelJSON){

    level3_modify_order_model_t *level3_modify_order_model_local_var = NULL;

    // level3_modify_order_model->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(level3_modify_order_modelJSON, "symbol");
    if (cJSON_IsNull(symbol)) {
        symbol = NULL;
    }
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // level3_modify_order_model->timestamp_nanos
    cJSON *timestamp_nanos = cJSON_GetObjectItemCaseSensitive(level3_modify_order_modelJSON, "timestamp_nanos");
    if (cJSON_IsNull(timestamp_nanos)) {
        timestamp_nanos = NULL;
    }
    if (timestamp_nanos) { 
    if(!cJSON_IsNumber(timestamp_nanos))
    {
    goto end; //Numeric
    }
    }

    // level3_modify_order_model->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(level3_modify_order_modelJSON, "timestamp");
    if (cJSON_IsNull(timestamp)) {
        timestamp = NULL;
    }
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //DateTime
    }
    }

    // level3_modify_order_model->order_id_reference
    cJSON *order_id_reference = cJSON_GetObjectItemCaseSensitive(level3_modify_order_modelJSON, "order_id_reference");
    if (cJSON_IsNull(order_id_reference)) {
        order_id_reference = NULL;
    }
    if (order_id_reference) { 
    if(!cJSON_IsNumber(order_id_reference))
    {
    goto end; //Numeric
    }
    }

    // level3_modify_order_model->is_priority_reset
    cJSON *is_priority_reset = cJSON_GetObjectItemCaseSensitive(level3_modify_order_modelJSON, "is_priority_reset");
    if (cJSON_IsNull(is_priority_reset)) {
        is_priority_reset = NULL;
    }
    if (is_priority_reset) { 
    if(!cJSON_IsBool(is_priority_reset))
    {
    goto end; //Bool
    }
    }

    // level3_modify_order_model->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(level3_modify_order_modelJSON, "size");
    if (cJSON_IsNull(size)) {
        size = NULL;
    }
    if (size) { 
    if(!cJSON_IsNumber(size))
    {
    goto end; //Numeric
    }
    }

    // level3_modify_order_model->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(level3_modify_order_modelJSON, "price");
    if (cJSON_IsNull(price)) {
        price = NULL;
    }
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }


    level3_modify_order_model_local_var = level3_modify_order_model_create_internal (
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        timestamp_nanos ? timestamp_nanos->valuedouble : 0,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        order_id_reference ? order_id_reference->valuedouble : 0,
        is_priority_reset ? is_priority_reset->valueint : 0,
        size ? size->valuedouble : 0,
        price ? price->valuedouble : 0
        );

    return level3_modify_order_model_local_var;
end:
    return NULL;

}
