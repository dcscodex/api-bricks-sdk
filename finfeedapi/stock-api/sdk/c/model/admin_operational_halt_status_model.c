#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "admin_operational_halt_status_model.h"



static admin_operational_halt_status_model_t *admin_operational_halt_status_model_create_internal(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int operational_halt_status,
    char *operational_halt_status_code,
    char *operational_halt_status_text,
    int is_operationally_halted,
    int is_not_operationally_halted
    ) {
    admin_operational_halt_status_model_t *admin_operational_halt_status_model_local_var = malloc(sizeof(admin_operational_halt_status_model_t));
    if (!admin_operational_halt_status_model_local_var) {
        return NULL;
    }
    admin_operational_halt_status_model_local_var->symbol = symbol;
    admin_operational_halt_status_model_local_var->timestamp_nanos = timestamp_nanos;
    admin_operational_halt_status_model_local_var->timestamp = timestamp;
    admin_operational_halt_status_model_local_var->operational_halt_status = operational_halt_status;
    admin_operational_halt_status_model_local_var->operational_halt_status_code = operational_halt_status_code;
    admin_operational_halt_status_model_local_var->operational_halt_status_text = operational_halt_status_text;
    admin_operational_halt_status_model_local_var->is_operationally_halted = is_operationally_halted;
    admin_operational_halt_status_model_local_var->is_not_operationally_halted = is_not_operationally_halted;

    admin_operational_halt_status_model_local_var->_library_owned = 1;
    return admin_operational_halt_status_model_local_var;
}

__attribute__((deprecated)) admin_operational_halt_status_model_t *admin_operational_halt_status_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int operational_halt_status,
    char *operational_halt_status_code,
    char *operational_halt_status_text,
    int is_operationally_halted,
    int is_not_operationally_halted
    ) {
    return admin_operational_halt_status_model_create_internal (
        symbol,
        timestamp_nanos,
        timestamp,
        operational_halt_status,
        operational_halt_status_code,
        operational_halt_status_text,
        is_operationally_halted,
        is_not_operationally_halted
        );
}

void admin_operational_halt_status_model_free(admin_operational_halt_status_model_t *admin_operational_halt_status_model) {
    if(NULL == admin_operational_halt_status_model){
        return ;
    }
    if(admin_operational_halt_status_model->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "admin_operational_halt_status_model_free");
        return ;
    }
    listEntry_t *listEntry;
    if (admin_operational_halt_status_model->symbol) {
        free(admin_operational_halt_status_model->symbol);
        admin_operational_halt_status_model->symbol = NULL;
    }
    if (admin_operational_halt_status_model->timestamp) {
        free(admin_operational_halt_status_model->timestamp);
        admin_operational_halt_status_model->timestamp = NULL;
    }
    if (admin_operational_halt_status_model->operational_halt_status_code) {
        free(admin_operational_halt_status_model->operational_halt_status_code);
        admin_operational_halt_status_model->operational_halt_status_code = NULL;
    }
    if (admin_operational_halt_status_model->operational_halt_status_text) {
        free(admin_operational_halt_status_model->operational_halt_status_text);
        admin_operational_halt_status_model->operational_halt_status_text = NULL;
    }
    free(admin_operational_halt_status_model);
}

cJSON *admin_operational_halt_status_model_convertToJSON(admin_operational_halt_status_model_t *admin_operational_halt_status_model) {
    cJSON *item = cJSON_CreateObject();

    // admin_operational_halt_status_model->symbol
    if(admin_operational_halt_status_model->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", admin_operational_halt_status_model->symbol) == NULL) {
    goto fail; //String
    }
    }


    // admin_operational_halt_status_model->timestamp_nanos
    if(admin_operational_halt_status_model->timestamp_nanos) {
    if(cJSON_AddNumberToObject(item, "timestamp_nanos", admin_operational_halt_status_model->timestamp_nanos) == NULL) {
    goto fail; //Numeric
    }
    }


    // admin_operational_halt_status_model->timestamp
    if(admin_operational_halt_status_model->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", admin_operational_halt_status_model->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // admin_operational_halt_status_model->operational_halt_status
    if(admin_operational_halt_status_model->operational_halt_status) {
    if(cJSON_AddNumberToObject(item, "operational_halt_status", admin_operational_halt_status_model->operational_halt_status) == NULL) {
    goto fail; //Numeric
    }
    }


    // admin_operational_halt_status_model->operational_halt_status_code
    if(admin_operational_halt_status_model->operational_halt_status_code) {
    if(cJSON_AddStringToObject(item, "operational_halt_status_code", admin_operational_halt_status_model->operational_halt_status_code) == NULL) {
    goto fail; //String
    }
    }


    // admin_operational_halt_status_model->operational_halt_status_text
    if(admin_operational_halt_status_model->operational_halt_status_text) {
    if(cJSON_AddStringToObject(item, "operational_halt_status_text", admin_operational_halt_status_model->operational_halt_status_text) == NULL) {
    goto fail; //String
    }
    }


    // admin_operational_halt_status_model->is_operationally_halted
    if(admin_operational_halt_status_model->is_operationally_halted) {
    if(cJSON_AddBoolToObject(item, "is_operationally_halted", admin_operational_halt_status_model->is_operationally_halted) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_operational_halt_status_model->is_not_operationally_halted
    if(admin_operational_halt_status_model->is_not_operationally_halted) {
    if(cJSON_AddBoolToObject(item, "is_not_operationally_halted", admin_operational_halt_status_model->is_not_operationally_halted) == NULL) {
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

admin_operational_halt_status_model_t *admin_operational_halt_status_model_parseFromJSON(cJSON *admin_operational_halt_status_modelJSON){

    admin_operational_halt_status_model_t *admin_operational_halt_status_model_local_var = NULL;

    // admin_operational_halt_status_model->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(admin_operational_halt_status_modelJSON, "symbol");
    if (cJSON_IsNull(symbol)) {
        symbol = NULL;
    }
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // admin_operational_halt_status_model->timestamp_nanos
    cJSON *timestamp_nanos = cJSON_GetObjectItemCaseSensitive(admin_operational_halt_status_modelJSON, "timestamp_nanos");
    if (cJSON_IsNull(timestamp_nanos)) {
        timestamp_nanos = NULL;
    }
    if (timestamp_nanos) { 
    if(!cJSON_IsNumber(timestamp_nanos))
    {
    goto end; //Numeric
    }
    }

    // admin_operational_halt_status_model->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(admin_operational_halt_status_modelJSON, "timestamp");
    if (cJSON_IsNull(timestamp)) {
        timestamp = NULL;
    }
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //DateTime
    }
    }

    // admin_operational_halt_status_model->operational_halt_status
    cJSON *operational_halt_status = cJSON_GetObjectItemCaseSensitive(admin_operational_halt_status_modelJSON, "operational_halt_status");
    if (cJSON_IsNull(operational_halt_status)) {
        operational_halt_status = NULL;
    }
    if (operational_halt_status) { 
    if(!cJSON_IsNumber(operational_halt_status))
    {
    goto end; //Numeric
    }
    }

    // admin_operational_halt_status_model->operational_halt_status_code
    cJSON *operational_halt_status_code = cJSON_GetObjectItemCaseSensitive(admin_operational_halt_status_modelJSON, "operational_halt_status_code");
    if (cJSON_IsNull(operational_halt_status_code)) {
        operational_halt_status_code = NULL;
    }
    if (operational_halt_status_code) { 
    if(!cJSON_IsString(operational_halt_status_code) && !cJSON_IsNull(operational_halt_status_code))
    {
    goto end; //String
    }
    }

    // admin_operational_halt_status_model->operational_halt_status_text
    cJSON *operational_halt_status_text = cJSON_GetObjectItemCaseSensitive(admin_operational_halt_status_modelJSON, "operational_halt_status_text");
    if (cJSON_IsNull(operational_halt_status_text)) {
        operational_halt_status_text = NULL;
    }
    if (operational_halt_status_text) { 
    if(!cJSON_IsString(operational_halt_status_text) && !cJSON_IsNull(operational_halt_status_text))
    {
    goto end; //String
    }
    }

    // admin_operational_halt_status_model->is_operationally_halted
    cJSON *is_operationally_halted = cJSON_GetObjectItemCaseSensitive(admin_operational_halt_status_modelJSON, "is_operationally_halted");
    if (cJSON_IsNull(is_operationally_halted)) {
        is_operationally_halted = NULL;
    }
    if (is_operationally_halted) { 
    if(!cJSON_IsBool(is_operationally_halted))
    {
    goto end; //Bool
    }
    }

    // admin_operational_halt_status_model->is_not_operationally_halted
    cJSON *is_not_operationally_halted = cJSON_GetObjectItemCaseSensitive(admin_operational_halt_status_modelJSON, "is_not_operationally_halted");
    if (cJSON_IsNull(is_not_operationally_halted)) {
        is_not_operationally_halted = NULL;
    }
    if (is_not_operationally_halted) { 
    if(!cJSON_IsBool(is_not_operationally_halted))
    {
    goto end; //Bool
    }
    }


    admin_operational_halt_status_model_local_var = admin_operational_halt_status_model_create_internal (
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        timestamp_nanos ? timestamp_nanos->valuedouble : 0,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        operational_halt_status ? operational_halt_status->valuedouble : 0,
        operational_halt_status_code && !cJSON_IsNull(operational_halt_status_code) ? strdup(operational_halt_status_code->valuestring) : NULL,
        operational_halt_status_text && !cJSON_IsNull(operational_halt_status_text) ? strdup(operational_halt_status_text->valuestring) : NULL,
        is_operationally_halted ? is_operationally_halted->valueint : 0,
        is_not_operationally_halted ? is_not_operationally_halted->valueint : 0
        );

    return admin_operational_halt_status_model_local_var;
end:
    return NULL;

}
