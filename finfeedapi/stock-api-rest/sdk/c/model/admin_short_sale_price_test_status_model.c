#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "admin_short_sale_price_test_status_model.h"



static admin_short_sale_price_test_status_model_t *admin_short_sale_price_test_status_model_create_internal(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int short_sale_price_test_status,
    char *short_sale_price_test_status_code,
    char *short_sale_price_test_status_text,
    int is_short_sale_price_test_not_in_effect,
    int is_short_sale_price_test_in_effect,
    int detail,
    char *detail_code,
    char *detail_text,
    int is_detail_no_price_test,
    int is_detail_activated,
    int is_detail_continued,
    int is_detail_deactivated,
    int is_detail_not_available
    ) {
    admin_short_sale_price_test_status_model_t *admin_short_sale_price_test_status_model_local_var = malloc(sizeof(admin_short_sale_price_test_status_model_t));
    if (!admin_short_sale_price_test_status_model_local_var) {
        return NULL;
    }
    admin_short_sale_price_test_status_model_local_var->symbol = symbol;
    admin_short_sale_price_test_status_model_local_var->timestamp_nanos = timestamp_nanos;
    admin_short_sale_price_test_status_model_local_var->timestamp = timestamp;
    admin_short_sale_price_test_status_model_local_var->short_sale_price_test_status = short_sale_price_test_status;
    admin_short_sale_price_test_status_model_local_var->short_sale_price_test_status_code = short_sale_price_test_status_code;
    admin_short_sale_price_test_status_model_local_var->short_sale_price_test_status_text = short_sale_price_test_status_text;
    admin_short_sale_price_test_status_model_local_var->is_short_sale_price_test_not_in_effect = is_short_sale_price_test_not_in_effect;
    admin_short_sale_price_test_status_model_local_var->is_short_sale_price_test_in_effect = is_short_sale_price_test_in_effect;
    admin_short_sale_price_test_status_model_local_var->detail = detail;
    admin_short_sale_price_test_status_model_local_var->detail_code = detail_code;
    admin_short_sale_price_test_status_model_local_var->detail_text = detail_text;
    admin_short_sale_price_test_status_model_local_var->is_detail_no_price_test = is_detail_no_price_test;
    admin_short_sale_price_test_status_model_local_var->is_detail_activated = is_detail_activated;
    admin_short_sale_price_test_status_model_local_var->is_detail_continued = is_detail_continued;
    admin_short_sale_price_test_status_model_local_var->is_detail_deactivated = is_detail_deactivated;
    admin_short_sale_price_test_status_model_local_var->is_detail_not_available = is_detail_not_available;

    admin_short_sale_price_test_status_model_local_var->_library_owned = 1;
    return admin_short_sale_price_test_status_model_local_var;
}

__attribute__((deprecated)) admin_short_sale_price_test_status_model_t *admin_short_sale_price_test_status_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int short_sale_price_test_status,
    char *short_sale_price_test_status_code,
    char *short_sale_price_test_status_text,
    int is_short_sale_price_test_not_in_effect,
    int is_short_sale_price_test_in_effect,
    int detail,
    char *detail_code,
    char *detail_text,
    int is_detail_no_price_test,
    int is_detail_activated,
    int is_detail_continued,
    int is_detail_deactivated,
    int is_detail_not_available
    ) {
    return admin_short_sale_price_test_status_model_create_internal (
        symbol,
        timestamp_nanos,
        timestamp,
        short_sale_price_test_status,
        short_sale_price_test_status_code,
        short_sale_price_test_status_text,
        is_short_sale_price_test_not_in_effect,
        is_short_sale_price_test_in_effect,
        detail,
        detail_code,
        detail_text,
        is_detail_no_price_test,
        is_detail_activated,
        is_detail_continued,
        is_detail_deactivated,
        is_detail_not_available
        );
}

void admin_short_sale_price_test_status_model_free(admin_short_sale_price_test_status_model_t *admin_short_sale_price_test_status_model) {
    if(NULL == admin_short_sale_price_test_status_model){
        return ;
    }
    if(admin_short_sale_price_test_status_model->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "admin_short_sale_price_test_status_model_free");
        return ;
    }
    listEntry_t *listEntry;
    if (admin_short_sale_price_test_status_model->symbol) {
        free(admin_short_sale_price_test_status_model->symbol);
        admin_short_sale_price_test_status_model->symbol = NULL;
    }
    if (admin_short_sale_price_test_status_model->timestamp) {
        free(admin_short_sale_price_test_status_model->timestamp);
        admin_short_sale_price_test_status_model->timestamp = NULL;
    }
    if (admin_short_sale_price_test_status_model->short_sale_price_test_status_code) {
        free(admin_short_sale_price_test_status_model->short_sale_price_test_status_code);
        admin_short_sale_price_test_status_model->short_sale_price_test_status_code = NULL;
    }
    if (admin_short_sale_price_test_status_model->short_sale_price_test_status_text) {
        free(admin_short_sale_price_test_status_model->short_sale_price_test_status_text);
        admin_short_sale_price_test_status_model->short_sale_price_test_status_text = NULL;
    }
    if (admin_short_sale_price_test_status_model->detail_code) {
        free(admin_short_sale_price_test_status_model->detail_code);
        admin_short_sale_price_test_status_model->detail_code = NULL;
    }
    if (admin_short_sale_price_test_status_model->detail_text) {
        free(admin_short_sale_price_test_status_model->detail_text);
        admin_short_sale_price_test_status_model->detail_text = NULL;
    }
    free(admin_short_sale_price_test_status_model);
}

cJSON *admin_short_sale_price_test_status_model_convertToJSON(admin_short_sale_price_test_status_model_t *admin_short_sale_price_test_status_model) {
    cJSON *item = cJSON_CreateObject();

    // admin_short_sale_price_test_status_model->symbol
    if(admin_short_sale_price_test_status_model->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", admin_short_sale_price_test_status_model->symbol) == NULL) {
    goto fail; //String
    }
    }


    // admin_short_sale_price_test_status_model->timestamp_nanos
    if(admin_short_sale_price_test_status_model->timestamp_nanos) {
    if(cJSON_AddNumberToObject(item, "timestamp_nanos", admin_short_sale_price_test_status_model->timestamp_nanos) == NULL) {
    goto fail; //Numeric
    }
    }


    // admin_short_sale_price_test_status_model->timestamp
    if(admin_short_sale_price_test_status_model->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", admin_short_sale_price_test_status_model->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // admin_short_sale_price_test_status_model->short_sale_price_test_status
    if(admin_short_sale_price_test_status_model->short_sale_price_test_status) {
    if(cJSON_AddNumberToObject(item, "short_sale_price_test_status", admin_short_sale_price_test_status_model->short_sale_price_test_status) == NULL) {
    goto fail; //Numeric
    }
    }


    // admin_short_sale_price_test_status_model->short_sale_price_test_status_code
    if(admin_short_sale_price_test_status_model->short_sale_price_test_status_code) {
    if(cJSON_AddStringToObject(item, "short_sale_price_test_status_code", admin_short_sale_price_test_status_model->short_sale_price_test_status_code) == NULL) {
    goto fail; //String
    }
    }


    // admin_short_sale_price_test_status_model->short_sale_price_test_status_text
    if(admin_short_sale_price_test_status_model->short_sale_price_test_status_text) {
    if(cJSON_AddStringToObject(item, "short_sale_price_test_status_text", admin_short_sale_price_test_status_model->short_sale_price_test_status_text) == NULL) {
    goto fail; //String
    }
    }


    // admin_short_sale_price_test_status_model->is_short_sale_price_test_not_in_effect
    if(admin_short_sale_price_test_status_model->is_short_sale_price_test_not_in_effect) {
    if(cJSON_AddBoolToObject(item, "is_short_sale_price_test_not_in_effect", admin_short_sale_price_test_status_model->is_short_sale_price_test_not_in_effect) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_short_sale_price_test_status_model->is_short_sale_price_test_in_effect
    if(admin_short_sale_price_test_status_model->is_short_sale_price_test_in_effect) {
    if(cJSON_AddBoolToObject(item, "is_short_sale_price_test_in_effect", admin_short_sale_price_test_status_model->is_short_sale_price_test_in_effect) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_short_sale_price_test_status_model->detail
    if(admin_short_sale_price_test_status_model->detail) {
    if(cJSON_AddNumberToObject(item, "detail", admin_short_sale_price_test_status_model->detail) == NULL) {
    goto fail; //Numeric
    }
    }


    // admin_short_sale_price_test_status_model->detail_code
    if(admin_short_sale_price_test_status_model->detail_code) {
    if(cJSON_AddStringToObject(item, "detail_code", admin_short_sale_price_test_status_model->detail_code) == NULL) {
    goto fail; //String
    }
    }


    // admin_short_sale_price_test_status_model->detail_text
    if(admin_short_sale_price_test_status_model->detail_text) {
    if(cJSON_AddStringToObject(item, "detail_text", admin_short_sale_price_test_status_model->detail_text) == NULL) {
    goto fail; //String
    }
    }


    // admin_short_sale_price_test_status_model->is_detail_no_price_test
    if(admin_short_sale_price_test_status_model->is_detail_no_price_test) {
    if(cJSON_AddBoolToObject(item, "is_detail_no_price_test", admin_short_sale_price_test_status_model->is_detail_no_price_test) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_short_sale_price_test_status_model->is_detail_activated
    if(admin_short_sale_price_test_status_model->is_detail_activated) {
    if(cJSON_AddBoolToObject(item, "is_detail_activated", admin_short_sale_price_test_status_model->is_detail_activated) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_short_sale_price_test_status_model->is_detail_continued
    if(admin_short_sale_price_test_status_model->is_detail_continued) {
    if(cJSON_AddBoolToObject(item, "is_detail_continued", admin_short_sale_price_test_status_model->is_detail_continued) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_short_sale_price_test_status_model->is_detail_deactivated
    if(admin_short_sale_price_test_status_model->is_detail_deactivated) {
    if(cJSON_AddBoolToObject(item, "is_detail_deactivated", admin_short_sale_price_test_status_model->is_detail_deactivated) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_short_sale_price_test_status_model->is_detail_not_available
    if(admin_short_sale_price_test_status_model->is_detail_not_available) {
    if(cJSON_AddBoolToObject(item, "is_detail_not_available", admin_short_sale_price_test_status_model->is_detail_not_available) == NULL) {
    goto fail; //Bool
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

admin_short_sale_price_test_status_model_t *admin_short_sale_price_test_status_model_parseFromJSON(cJSON *admin_short_sale_price_test_status_modelJSON){

    admin_short_sale_price_test_status_model_t *admin_short_sale_price_test_status_model_local_var = NULL;

    // admin_short_sale_price_test_status_model->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(admin_short_sale_price_test_status_modelJSON, "symbol");
    if (cJSON_IsNull(symbol)) {
        symbol = NULL;
    }
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // admin_short_sale_price_test_status_model->timestamp_nanos
    cJSON *timestamp_nanos = cJSON_GetObjectItemCaseSensitive(admin_short_sale_price_test_status_modelJSON, "timestamp_nanos");
    if (cJSON_IsNull(timestamp_nanos)) {
        timestamp_nanos = NULL;
    }
    if (timestamp_nanos) { 
    if(!cJSON_IsNumber(timestamp_nanos))
    {
    goto end; //Numeric
    }
    }

    // admin_short_sale_price_test_status_model->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(admin_short_sale_price_test_status_modelJSON, "timestamp");
    if (cJSON_IsNull(timestamp)) {
        timestamp = NULL;
    }
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //DateTime
    }
    }

    // admin_short_sale_price_test_status_model->short_sale_price_test_status
    cJSON *short_sale_price_test_status = cJSON_GetObjectItemCaseSensitive(admin_short_sale_price_test_status_modelJSON, "short_sale_price_test_status");
    if (cJSON_IsNull(short_sale_price_test_status)) {
        short_sale_price_test_status = NULL;
    }
    if (short_sale_price_test_status) { 
    if(!cJSON_IsNumber(short_sale_price_test_status))
    {
    goto end; //Numeric
    }
    }

    // admin_short_sale_price_test_status_model->short_sale_price_test_status_code
    cJSON *short_sale_price_test_status_code = cJSON_GetObjectItemCaseSensitive(admin_short_sale_price_test_status_modelJSON, "short_sale_price_test_status_code");
    if (cJSON_IsNull(short_sale_price_test_status_code)) {
        short_sale_price_test_status_code = NULL;
    }
    if (short_sale_price_test_status_code) { 
    if(!cJSON_IsString(short_sale_price_test_status_code) && !cJSON_IsNull(short_sale_price_test_status_code))
    {
    goto end; //String
    }
    }

    // admin_short_sale_price_test_status_model->short_sale_price_test_status_text
    cJSON *short_sale_price_test_status_text = cJSON_GetObjectItemCaseSensitive(admin_short_sale_price_test_status_modelJSON, "short_sale_price_test_status_text");
    if (cJSON_IsNull(short_sale_price_test_status_text)) {
        short_sale_price_test_status_text = NULL;
    }
    if (short_sale_price_test_status_text) { 
    if(!cJSON_IsString(short_sale_price_test_status_text) && !cJSON_IsNull(short_sale_price_test_status_text))
    {
    goto end; //String
    }
    }

    // admin_short_sale_price_test_status_model->is_short_sale_price_test_not_in_effect
    cJSON *is_short_sale_price_test_not_in_effect = cJSON_GetObjectItemCaseSensitive(admin_short_sale_price_test_status_modelJSON, "is_short_sale_price_test_not_in_effect");
    if (cJSON_IsNull(is_short_sale_price_test_not_in_effect)) {
        is_short_sale_price_test_not_in_effect = NULL;
    }
    if (is_short_sale_price_test_not_in_effect) { 
    if(!cJSON_IsBool(is_short_sale_price_test_not_in_effect))
    {
    goto end; //Bool
    }
    }

    // admin_short_sale_price_test_status_model->is_short_sale_price_test_in_effect
    cJSON *is_short_sale_price_test_in_effect = cJSON_GetObjectItemCaseSensitive(admin_short_sale_price_test_status_modelJSON, "is_short_sale_price_test_in_effect");
    if (cJSON_IsNull(is_short_sale_price_test_in_effect)) {
        is_short_sale_price_test_in_effect = NULL;
    }
    if (is_short_sale_price_test_in_effect) { 
    if(!cJSON_IsBool(is_short_sale_price_test_in_effect))
    {
    goto end; //Bool
    }
    }

    // admin_short_sale_price_test_status_model->detail
    cJSON *detail = cJSON_GetObjectItemCaseSensitive(admin_short_sale_price_test_status_modelJSON, "detail");
    if (cJSON_IsNull(detail)) {
        detail = NULL;
    }
    if (detail) { 
    if(!cJSON_IsNumber(detail))
    {
    goto end; //Numeric
    }
    }

    // admin_short_sale_price_test_status_model->detail_code
    cJSON *detail_code = cJSON_GetObjectItemCaseSensitive(admin_short_sale_price_test_status_modelJSON, "detail_code");
    if (cJSON_IsNull(detail_code)) {
        detail_code = NULL;
    }
    if (detail_code) { 
    if(!cJSON_IsString(detail_code) && !cJSON_IsNull(detail_code))
    {
    goto end; //String
    }
    }

    // admin_short_sale_price_test_status_model->detail_text
    cJSON *detail_text = cJSON_GetObjectItemCaseSensitive(admin_short_sale_price_test_status_modelJSON, "detail_text");
    if (cJSON_IsNull(detail_text)) {
        detail_text = NULL;
    }
    if (detail_text) { 
    if(!cJSON_IsString(detail_text) && !cJSON_IsNull(detail_text))
    {
    goto end; //String
    }
    }

    // admin_short_sale_price_test_status_model->is_detail_no_price_test
    cJSON *is_detail_no_price_test = cJSON_GetObjectItemCaseSensitive(admin_short_sale_price_test_status_modelJSON, "is_detail_no_price_test");
    if (cJSON_IsNull(is_detail_no_price_test)) {
        is_detail_no_price_test = NULL;
    }
    if (is_detail_no_price_test) { 
    if(!cJSON_IsBool(is_detail_no_price_test))
    {
    goto end; //Bool
    }
    }

    // admin_short_sale_price_test_status_model->is_detail_activated
    cJSON *is_detail_activated = cJSON_GetObjectItemCaseSensitive(admin_short_sale_price_test_status_modelJSON, "is_detail_activated");
    if (cJSON_IsNull(is_detail_activated)) {
        is_detail_activated = NULL;
    }
    if (is_detail_activated) { 
    if(!cJSON_IsBool(is_detail_activated))
    {
    goto end; //Bool
    }
    }

    // admin_short_sale_price_test_status_model->is_detail_continued
    cJSON *is_detail_continued = cJSON_GetObjectItemCaseSensitive(admin_short_sale_price_test_status_modelJSON, "is_detail_continued");
    if (cJSON_IsNull(is_detail_continued)) {
        is_detail_continued = NULL;
    }
    if (is_detail_continued) { 
    if(!cJSON_IsBool(is_detail_continued))
    {
    goto end; //Bool
    }
    }

    // admin_short_sale_price_test_status_model->is_detail_deactivated
    cJSON *is_detail_deactivated = cJSON_GetObjectItemCaseSensitive(admin_short_sale_price_test_status_modelJSON, "is_detail_deactivated");
    if (cJSON_IsNull(is_detail_deactivated)) {
        is_detail_deactivated = NULL;
    }
    if (is_detail_deactivated) { 
    if(!cJSON_IsBool(is_detail_deactivated))
    {
    goto end; //Bool
    }
    }

    // admin_short_sale_price_test_status_model->is_detail_not_available
    cJSON *is_detail_not_available = cJSON_GetObjectItemCaseSensitive(admin_short_sale_price_test_status_modelJSON, "is_detail_not_available");
    if (cJSON_IsNull(is_detail_not_available)) {
        is_detail_not_available = NULL;
    }
    if (is_detail_not_available) { 
    if(!cJSON_IsBool(is_detail_not_available))
    {
    goto end; //Bool
    }
    }


    admin_short_sale_price_test_status_model_local_var = admin_short_sale_price_test_status_model_create_internal (
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        timestamp_nanos ? timestamp_nanos->valuedouble : 0,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        short_sale_price_test_status ? short_sale_price_test_status->valuedouble : 0,
        short_sale_price_test_status_code && !cJSON_IsNull(short_sale_price_test_status_code) ? strdup(short_sale_price_test_status_code->valuestring) : NULL,
        short_sale_price_test_status_text && !cJSON_IsNull(short_sale_price_test_status_text) ? strdup(short_sale_price_test_status_text->valuestring) : NULL,
        is_short_sale_price_test_not_in_effect ? is_short_sale_price_test_not_in_effect->valueint : 0,
        is_short_sale_price_test_in_effect ? is_short_sale_price_test_in_effect->valueint : 0,
        detail ? detail->valuedouble : 0,
        detail_code && !cJSON_IsNull(detail_code) ? strdup(detail_code->valuestring) : NULL,
        detail_text && !cJSON_IsNull(detail_text) ? strdup(detail_text->valuestring) : NULL,
        is_detail_no_price_test ? is_detail_no_price_test->valueint : 0,
        is_detail_activated ? is_detail_activated->valueint : 0,
        is_detail_continued ? is_detail_continued->valueint : 0,
        is_detail_deactivated ? is_detail_deactivated->valueint : 0,
        is_detail_not_available ? is_detail_not_available->valueint : 0
        );

    return admin_short_sale_price_test_status_model_local_var;
end:
    return NULL;

}
