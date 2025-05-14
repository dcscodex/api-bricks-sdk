#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "level2_price_level_update_model.h"



static level2_price_level_update_model_t *level2_price_level_update_model_create_internal(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int is_side_buy,
    int is_event_processing_complete,
    int size,
    double price
    ) {
    level2_price_level_update_model_t *level2_price_level_update_model_local_var = malloc(sizeof(level2_price_level_update_model_t));
    if (!level2_price_level_update_model_local_var) {
        return NULL;
    }
    level2_price_level_update_model_local_var->symbol = symbol;
    level2_price_level_update_model_local_var->timestamp_nanos = timestamp_nanos;
    level2_price_level_update_model_local_var->timestamp = timestamp;
    level2_price_level_update_model_local_var->is_side_buy = is_side_buy;
    level2_price_level_update_model_local_var->is_event_processing_complete = is_event_processing_complete;
    level2_price_level_update_model_local_var->size = size;
    level2_price_level_update_model_local_var->price = price;

    level2_price_level_update_model_local_var->_library_owned = 1;
    return level2_price_level_update_model_local_var;
}

__attribute__((deprecated)) level2_price_level_update_model_t *level2_price_level_update_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int is_side_buy,
    int is_event_processing_complete,
    int size,
    double price
    ) {
    return level2_price_level_update_model_create_internal (
        symbol,
        timestamp_nanos,
        timestamp,
        is_side_buy,
        is_event_processing_complete,
        size,
        price
        );
}

void level2_price_level_update_model_free(level2_price_level_update_model_t *level2_price_level_update_model) {
    if(NULL == level2_price_level_update_model){
        return ;
    }
    if(level2_price_level_update_model->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "level2_price_level_update_model_free");
        return ;
    }
    listEntry_t *listEntry;
    if (level2_price_level_update_model->symbol) {
        free(level2_price_level_update_model->symbol);
        level2_price_level_update_model->symbol = NULL;
    }
    if (level2_price_level_update_model->timestamp) {
        free(level2_price_level_update_model->timestamp);
        level2_price_level_update_model->timestamp = NULL;
    }
    free(level2_price_level_update_model);
}

cJSON *level2_price_level_update_model_convertToJSON(level2_price_level_update_model_t *level2_price_level_update_model) {
    cJSON *item = cJSON_CreateObject();

    // level2_price_level_update_model->symbol
    if(level2_price_level_update_model->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", level2_price_level_update_model->symbol) == NULL) {
    goto fail; //String
    }
    }


    // level2_price_level_update_model->timestamp_nanos
    if(level2_price_level_update_model->timestamp_nanos) {
    if(cJSON_AddNumberToObject(item, "timestamp_nanos", level2_price_level_update_model->timestamp_nanos) == NULL) {
    goto fail; //Numeric
    }
    }


    // level2_price_level_update_model->timestamp
    if(level2_price_level_update_model->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", level2_price_level_update_model->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // level2_price_level_update_model->is_side_buy
    if(level2_price_level_update_model->is_side_buy) {
    if(cJSON_AddBoolToObject(item, "is_side_buy", level2_price_level_update_model->is_side_buy) == NULL) {
    goto fail; //Bool
    }
    }


    // level2_price_level_update_model->is_event_processing_complete
    if(level2_price_level_update_model->is_event_processing_complete) {
    if(cJSON_AddBoolToObject(item, "is_event_processing_complete", level2_price_level_update_model->is_event_processing_complete) == NULL) {
    goto fail; //Bool
    }
    }


    // level2_price_level_update_model->size
    if(level2_price_level_update_model->size) {
    if(cJSON_AddNumberToObject(item, "size", level2_price_level_update_model->size) == NULL) {
    goto fail; //Numeric
    }
    }


    // level2_price_level_update_model->price
    if(level2_price_level_update_model->price) {
    if(cJSON_AddNumberToObject(item, "price", level2_price_level_update_model->price) == NULL) {
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

level2_price_level_update_model_t *level2_price_level_update_model_parseFromJSON(cJSON *level2_price_level_update_modelJSON){

    level2_price_level_update_model_t *level2_price_level_update_model_local_var = NULL;

    // level2_price_level_update_model->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(level2_price_level_update_modelJSON, "symbol");
    if (cJSON_IsNull(symbol)) {
        symbol = NULL;
    }
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // level2_price_level_update_model->timestamp_nanos
    cJSON *timestamp_nanos = cJSON_GetObjectItemCaseSensitive(level2_price_level_update_modelJSON, "timestamp_nanos");
    if (cJSON_IsNull(timestamp_nanos)) {
        timestamp_nanos = NULL;
    }
    if (timestamp_nanos) { 
    if(!cJSON_IsNumber(timestamp_nanos))
    {
    goto end; //Numeric
    }
    }

    // level2_price_level_update_model->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(level2_price_level_update_modelJSON, "timestamp");
    if (cJSON_IsNull(timestamp)) {
        timestamp = NULL;
    }
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //DateTime
    }
    }

    // level2_price_level_update_model->is_side_buy
    cJSON *is_side_buy = cJSON_GetObjectItemCaseSensitive(level2_price_level_update_modelJSON, "is_side_buy");
    if (cJSON_IsNull(is_side_buy)) {
        is_side_buy = NULL;
    }
    if (is_side_buy) { 
    if(!cJSON_IsBool(is_side_buy))
    {
    goto end; //Bool
    }
    }

    // level2_price_level_update_model->is_event_processing_complete
    cJSON *is_event_processing_complete = cJSON_GetObjectItemCaseSensitive(level2_price_level_update_modelJSON, "is_event_processing_complete");
    if (cJSON_IsNull(is_event_processing_complete)) {
        is_event_processing_complete = NULL;
    }
    if (is_event_processing_complete) { 
    if(!cJSON_IsBool(is_event_processing_complete))
    {
    goto end; //Bool
    }
    }

    // level2_price_level_update_model->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(level2_price_level_update_modelJSON, "size");
    if (cJSON_IsNull(size)) {
        size = NULL;
    }
    if (size) { 
    if(!cJSON_IsNumber(size))
    {
    goto end; //Numeric
    }
    }

    // level2_price_level_update_model->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(level2_price_level_update_modelJSON, "price");
    if (cJSON_IsNull(price)) {
        price = NULL;
    }
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }


    level2_price_level_update_model_local_var = level2_price_level_update_model_create_internal (
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        timestamp_nanos ? timestamp_nanos->valuedouble : 0,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        is_side_buy ? is_side_buy->valueint : 0,
        is_event_processing_complete ? is_event_processing_complete->valueint : 0,
        size ? size->valuedouble : 0,
        price ? price->valuedouble : 0
        );

    return level2_price_level_update_model_local_var;
end:
    return NULL;

}
