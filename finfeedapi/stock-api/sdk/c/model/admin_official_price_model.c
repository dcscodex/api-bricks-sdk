#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "admin_official_price_model.h"



static admin_official_price_model_t *admin_official_price_model_create_internal(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int price_type,
    char *price_type_code,
    char *price_type_text,
    int is_price_type_opening,
    int is_price_type_closing,
    double official_price
    ) {
    admin_official_price_model_t *admin_official_price_model_local_var = malloc(sizeof(admin_official_price_model_t));
    if (!admin_official_price_model_local_var) {
        return NULL;
    }
    admin_official_price_model_local_var->symbol = symbol;
    admin_official_price_model_local_var->timestamp_nanos = timestamp_nanos;
    admin_official_price_model_local_var->timestamp = timestamp;
    admin_official_price_model_local_var->price_type = price_type;
    admin_official_price_model_local_var->price_type_code = price_type_code;
    admin_official_price_model_local_var->price_type_text = price_type_text;
    admin_official_price_model_local_var->is_price_type_opening = is_price_type_opening;
    admin_official_price_model_local_var->is_price_type_closing = is_price_type_closing;
    admin_official_price_model_local_var->official_price = official_price;

    admin_official_price_model_local_var->_library_owned = 1;
    return admin_official_price_model_local_var;
}

__attribute__((deprecated)) admin_official_price_model_t *admin_official_price_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int price_type,
    char *price_type_code,
    char *price_type_text,
    int is_price_type_opening,
    int is_price_type_closing,
    double official_price
    ) {
    return admin_official_price_model_create_internal (
        symbol,
        timestamp_nanos,
        timestamp,
        price_type,
        price_type_code,
        price_type_text,
        is_price_type_opening,
        is_price_type_closing,
        official_price
        );
}

void admin_official_price_model_free(admin_official_price_model_t *admin_official_price_model) {
    if(NULL == admin_official_price_model){
        return ;
    }
    if(admin_official_price_model->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "admin_official_price_model_free");
        return ;
    }
    listEntry_t *listEntry;
    if (admin_official_price_model->symbol) {
        free(admin_official_price_model->symbol);
        admin_official_price_model->symbol = NULL;
    }
    if (admin_official_price_model->timestamp) {
        free(admin_official_price_model->timestamp);
        admin_official_price_model->timestamp = NULL;
    }
    if (admin_official_price_model->price_type_code) {
        free(admin_official_price_model->price_type_code);
        admin_official_price_model->price_type_code = NULL;
    }
    if (admin_official_price_model->price_type_text) {
        free(admin_official_price_model->price_type_text);
        admin_official_price_model->price_type_text = NULL;
    }
    free(admin_official_price_model);
}

cJSON *admin_official_price_model_convertToJSON(admin_official_price_model_t *admin_official_price_model) {
    cJSON *item = cJSON_CreateObject();

    // admin_official_price_model->symbol
    if(admin_official_price_model->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", admin_official_price_model->symbol) == NULL) {
    goto fail; //String
    }
    }


    // admin_official_price_model->timestamp_nanos
    if(admin_official_price_model->timestamp_nanos) {
    if(cJSON_AddNumberToObject(item, "timestamp_nanos", admin_official_price_model->timestamp_nanos) == NULL) {
    goto fail; //Numeric
    }
    }


    // admin_official_price_model->timestamp
    if(admin_official_price_model->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", admin_official_price_model->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // admin_official_price_model->price_type
    if(admin_official_price_model->price_type) {
    if(cJSON_AddNumberToObject(item, "price_type", admin_official_price_model->price_type) == NULL) {
    goto fail; //Numeric
    }
    }


    // admin_official_price_model->price_type_code
    if(admin_official_price_model->price_type_code) {
    if(cJSON_AddStringToObject(item, "price_type_code", admin_official_price_model->price_type_code) == NULL) {
    goto fail; //String
    }
    }


    // admin_official_price_model->price_type_text
    if(admin_official_price_model->price_type_text) {
    if(cJSON_AddStringToObject(item, "price_type_text", admin_official_price_model->price_type_text) == NULL) {
    goto fail; //String
    }
    }


    // admin_official_price_model->is_price_type_opening
    if(admin_official_price_model->is_price_type_opening) {
    if(cJSON_AddBoolToObject(item, "is_price_type_opening", admin_official_price_model->is_price_type_opening) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_official_price_model->is_price_type_closing
    if(admin_official_price_model->is_price_type_closing) {
    if(cJSON_AddBoolToObject(item, "is_price_type_closing", admin_official_price_model->is_price_type_closing) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_official_price_model->official_price
    if(admin_official_price_model->official_price) {
    if(cJSON_AddNumberToObject(item, "official_price", admin_official_price_model->official_price) == NULL) {
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

admin_official_price_model_t *admin_official_price_model_parseFromJSON(cJSON *admin_official_price_modelJSON){

    admin_official_price_model_t *admin_official_price_model_local_var = NULL;

    // admin_official_price_model->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(admin_official_price_modelJSON, "symbol");
    if (cJSON_IsNull(symbol)) {
        symbol = NULL;
    }
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // admin_official_price_model->timestamp_nanos
    cJSON *timestamp_nanos = cJSON_GetObjectItemCaseSensitive(admin_official_price_modelJSON, "timestamp_nanos");
    if (cJSON_IsNull(timestamp_nanos)) {
        timestamp_nanos = NULL;
    }
    if (timestamp_nanos) { 
    if(!cJSON_IsNumber(timestamp_nanos))
    {
    goto end; //Numeric
    }
    }

    // admin_official_price_model->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(admin_official_price_modelJSON, "timestamp");
    if (cJSON_IsNull(timestamp)) {
        timestamp = NULL;
    }
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //DateTime
    }
    }

    // admin_official_price_model->price_type
    cJSON *price_type = cJSON_GetObjectItemCaseSensitive(admin_official_price_modelJSON, "price_type");
    if (cJSON_IsNull(price_type)) {
        price_type = NULL;
    }
    if (price_type) { 
    if(!cJSON_IsNumber(price_type))
    {
    goto end; //Numeric
    }
    }

    // admin_official_price_model->price_type_code
    cJSON *price_type_code = cJSON_GetObjectItemCaseSensitive(admin_official_price_modelJSON, "price_type_code");
    if (cJSON_IsNull(price_type_code)) {
        price_type_code = NULL;
    }
    if (price_type_code) { 
    if(!cJSON_IsString(price_type_code) && !cJSON_IsNull(price_type_code))
    {
    goto end; //String
    }
    }

    // admin_official_price_model->price_type_text
    cJSON *price_type_text = cJSON_GetObjectItemCaseSensitive(admin_official_price_modelJSON, "price_type_text");
    if (cJSON_IsNull(price_type_text)) {
        price_type_text = NULL;
    }
    if (price_type_text) { 
    if(!cJSON_IsString(price_type_text) && !cJSON_IsNull(price_type_text))
    {
    goto end; //String
    }
    }

    // admin_official_price_model->is_price_type_opening
    cJSON *is_price_type_opening = cJSON_GetObjectItemCaseSensitive(admin_official_price_modelJSON, "is_price_type_opening");
    if (cJSON_IsNull(is_price_type_opening)) {
        is_price_type_opening = NULL;
    }
    if (is_price_type_opening) { 
    if(!cJSON_IsBool(is_price_type_opening))
    {
    goto end; //Bool
    }
    }

    // admin_official_price_model->is_price_type_closing
    cJSON *is_price_type_closing = cJSON_GetObjectItemCaseSensitive(admin_official_price_modelJSON, "is_price_type_closing");
    if (cJSON_IsNull(is_price_type_closing)) {
        is_price_type_closing = NULL;
    }
    if (is_price_type_closing) { 
    if(!cJSON_IsBool(is_price_type_closing))
    {
    goto end; //Bool
    }
    }

    // admin_official_price_model->official_price
    cJSON *official_price = cJSON_GetObjectItemCaseSensitive(admin_official_price_modelJSON, "official_price");
    if (cJSON_IsNull(official_price)) {
        official_price = NULL;
    }
    if (official_price) { 
    if(!cJSON_IsNumber(official_price))
    {
    goto end; //Numeric
    }
    }


    admin_official_price_model_local_var = admin_official_price_model_create_internal (
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        timestamp_nanos ? timestamp_nanos->valuedouble : 0,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        price_type ? price_type->valuedouble : 0,
        price_type_code && !cJSON_IsNull(price_type_code) ? strdup(price_type_code->valuestring) : NULL,
        price_type_text && !cJSON_IsNull(price_type_text) ? strdup(price_type_text->valuestring) : NULL,
        is_price_type_opening ? is_price_type_opening->valueint : 0,
        is_price_type_closing ? is_price_type_closing->valueint : 0,
        official_price ? official_price->valuedouble : 0
        );

    return admin_official_price_model_local_var;
end:
    return NULL;

}
