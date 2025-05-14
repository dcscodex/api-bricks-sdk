#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "level3_clear_book_model.h"



static level3_clear_book_model_t *level3_clear_book_model_create_internal(
    char *symbol,
    long timestamp_nanos,
    char *timestamp
    ) {
    level3_clear_book_model_t *level3_clear_book_model_local_var = malloc(sizeof(level3_clear_book_model_t));
    if (!level3_clear_book_model_local_var) {
        return NULL;
    }
    level3_clear_book_model_local_var->symbol = symbol;
    level3_clear_book_model_local_var->timestamp_nanos = timestamp_nanos;
    level3_clear_book_model_local_var->timestamp = timestamp;

    level3_clear_book_model_local_var->_library_owned = 1;
    return level3_clear_book_model_local_var;
}

__attribute__((deprecated)) level3_clear_book_model_t *level3_clear_book_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp
    ) {
    return level3_clear_book_model_create_internal (
        symbol,
        timestamp_nanos,
        timestamp
        );
}

void level3_clear_book_model_free(level3_clear_book_model_t *level3_clear_book_model) {
    if(NULL == level3_clear_book_model){
        return ;
    }
    if(level3_clear_book_model->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "level3_clear_book_model_free");
        return ;
    }
    listEntry_t *listEntry;
    if (level3_clear_book_model->symbol) {
        free(level3_clear_book_model->symbol);
        level3_clear_book_model->symbol = NULL;
    }
    if (level3_clear_book_model->timestamp) {
        free(level3_clear_book_model->timestamp);
        level3_clear_book_model->timestamp = NULL;
    }
    free(level3_clear_book_model);
}

cJSON *level3_clear_book_model_convertToJSON(level3_clear_book_model_t *level3_clear_book_model) {
    cJSON *item = cJSON_CreateObject();

    // level3_clear_book_model->symbol
    if(level3_clear_book_model->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", level3_clear_book_model->symbol) == NULL) {
    goto fail; //String
    }
    }


    // level3_clear_book_model->timestamp_nanos
    if(level3_clear_book_model->timestamp_nanos) {
    if(cJSON_AddNumberToObject(item, "timestamp_nanos", level3_clear_book_model->timestamp_nanos) == NULL) {
    goto fail; //Numeric
    }
    }


    // level3_clear_book_model->timestamp
    if(level3_clear_book_model->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", level3_clear_book_model->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

level3_clear_book_model_t *level3_clear_book_model_parseFromJSON(cJSON *level3_clear_book_modelJSON){

    level3_clear_book_model_t *level3_clear_book_model_local_var = NULL;

    // level3_clear_book_model->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(level3_clear_book_modelJSON, "symbol");
    if (cJSON_IsNull(symbol)) {
        symbol = NULL;
    }
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // level3_clear_book_model->timestamp_nanos
    cJSON *timestamp_nanos = cJSON_GetObjectItemCaseSensitive(level3_clear_book_modelJSON, "timestamp_nanos");
    if (cJSON_IsNull(timestamp_nanos)) {
        timestamp_nanos = NULL;
    }
    if (timestamp_nanos) { 
    if(!cJSON_IsNumber(timestamp_nanos))
    {
    goto end; //Numeric
    }
    }

    // level3_clear_book_model->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(level3_clear_book_modelJSON, "timestamp");
    if (cJSON_IsNull(timestamp)) {
        timestamp = NULL;
    }
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //DateTime
    }
    }


    level3_clear_book_model_local_var = level3_clear_book_model_create_internal (
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        timestamp_nanos ? timestamp_nanos->valuedouble : 0,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL
        );

    return level3_clear_book_model_local_var;
end:
    return NULL;

}
