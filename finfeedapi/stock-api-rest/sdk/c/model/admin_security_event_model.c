#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "admin_security_event_model.h"



static admin_security_event_model_t *admin_security_event_model_create_internal(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int security_event,
    char *security_event_code,
    char *security_event_text,
    int is_opening_process_complete,
    int is_closing_process_complete
    ) {
    admin_security_event_model_t *admin_security_event_model_local_var = malloc(sizeof(admin_security_event_model_t));
    if (!admin_security_event_model_local_var) {
        return NULL;
    }
    admin_security_event_model_local_var->symbol = symbol;
    admin_security_event_model_local_var->timestamp_nanos = timestamp_nanos;
    admin_security_event_model_local_var->timestamp = timestamp;
    admin_security_event_model_local_var->security_event = security_event;
    admin_security_event_model_local_var->security_event_code = security_event_code;
    admin_security_event_model_local_var->security_event_text = security_event_text;
    admin_security_event_model_local_var->is_opening_process_complete = is_opening_process_complete;
    admin_security_event_model_local_var->is_closing_process_complete = is_closing_process_complete;

    admin_security_event_model_local_var->_library_owned = 1;
    return admin_security_event_model_local_var;
}

__attribute__((deprecated)) admin_security_event_model_t *admin_security_event_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int security_event,
    char *security_event_code,
    char *security_event_text,
    int is_opening_process_complete,
    int is_closing_process_complete
    ) {
    return admin_security_event_model_create_internal (
        symbol,
        timestamp_nanos,
        timestamp,
        security_event,
        security_event_code,
        security_event_text,
        is_opening_process_complete,
        is_closing_process_complete
        );
}

void admin_security_event_model_free(admin_security_event_model_t *admin_security_event_model) {
    if(NULL == admin_security_event_model){
        return ;
    }
    if(admin_security_event_model->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "admin_security_event_model_free");
        return ;
    }
    listEntry_t *listEntry;
    if (admin_security_event_model->symbol) {
        free(admin_security_event_model->symbol);
        admin_security_event_model->symbol = NULL;
    }
    if (admin_security_event_model->timestamp) {
        free(admin_security_event_model->timestamp);
        admin_security_event_model->timestamp = NULL;
    }
    if (admin_security_event_model->security_event_code) {
        free(admin_security_event_model->security_event_code);
        admin_security_event_model->security_event_code = NULL;
    }
    if (admin_security_event_model->security_event_text) {
        free(admin_security_event_model->security_event_text);
        admin_security_event_model->security_event_text = NULL;
    }
    free(admin_security_event_model);
}

cJSON *admin_security_event_model_convertToJSON(admin_security_event_model_t *admin_security_event_model) {
    cJSON *item = cJSON_CreateObject();

    // admin_security_event_model->symbol
    if(admin_security_event_model->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", admin_security_event_model->symbol) == NULL) {
    goto fail; //String
    }
    }


    // admin_security_event_model->timestamp_nanos
    if(admin_security_event_model->timestamp_nanos) {
    if(cJSON_AddNumberToObject(item, "timestamp_nanos", admin_security_event_model->timestamp_nanos) == NULL) {
    goto fail; //Numeric
    }
    }


    // admin_security_event_model->timestamp
    if(admin_security_event_model->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", admin_security_event_model->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // admin_security_event_model->security_event
    if(admin_security_event_model->security_event) {
    if(cJSON_AddNumberToObject(item, "security_event", admin_security_event_model->security_event) == NULL) {
    goto fail; //Numeric
    }
    }


    // admin_security_event_model->security_event_code
    if(admin_security_event_model->security_event_code) {
    if(cJSON_AddStringToObject(item, "security_event_code", admin_security_event_model->security_event_code) == NULL) {
    goto fail; //String
    }
    }


    // admin_security_event_model->security_event_text
    if(admin_security_event_model->security_event_text) {
    if(cJSON_AddStringToObject(item, "security_event_text", admin_security_event_model->security_event_text) == NULL) {
    goto fail; //String
    }
    }


    // admin_security_event_model->is_opening_process_complete
    if(admin_security_event_model->is_opening_process_complete) {
    if(cJSON_AddBoolToObject(item, "is_opening_process_complete", admin_security_event_model->is_opening_process_complete) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_security_event_model->is_closing_process_complete
    if(admin_security_event_model->is_closing_process_complete) {
    if(cJSON_AddBoolToObject(item, "is_closing_process_complete", admin_security_event_model->is_closing_process_complete) == NULL) {
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

admin_security_event_model_t *admin_security_event_model_parseFromJSON(cJSON *admin_security_event_modelJSON){

    admin_security_event_model_t *admin_security_event_model_local_var = NULL;

    // admin_security_event_model->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(admin_security_event_modelJSON, "symbol");
    if (cJSON_IsNull(symbol)) {
        symbol = NULL;
    }
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // admin_security_event_model->timestamp_nanos
    cJSON *timestamp_nanos = cJSON_GetObjectItemCaseSensitive(admin_security_event_modelJSON, "timestamp_nanos");
    if (cJSON_IsNull(timestamp_nanos)) {
        timestamp_nanos = NULL;
    }
    if (timestamp_nanos) { 
    if(!cJSON_IsNumber(timestamp_nanos))
    {
    goto end; //Numeric
    }
    }

    // admin_security_event_model->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(admin_security_event_modelJSON, "timestamp");
    if (cJSON_IsNull(timestamp)) {
        timestamp = NULL;
    }
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //DateTime
    }
    }

    // admin_security_event_model->security_event
    cJSON *security_event = cJSON_GetObjectItemCaseSensitive(admin_security_event_modelJSON, "security_event");
    if (cJSON_IsNull(security_event)) {
        security_event = NULL;
    }
    if (security_event) { 
    if(!cJSON_IsNumber(security_event))
    {
    goto end; //Numeric
    }
    }

    // admin_security_event_model->security_event_code
    cJSON *security_event_code = cJSON_GetObjectItemCaseSensitive(admin_security_event_modelJSON, "security_event_code");
    if (cJSON_IsNull(security_event_code)) {
        security_event_code = NULL;
    }
    if (security_event_code) { 
    if(!cJSON_IsString(security_event_code) && !cJSON_IsNull(security_event_code))
    {
    goto end; //String
    }
    }

    // admin_security_event_model->security_event_text
    cJSON *security_event_text = cJSON_GetObjectItemCaseSensitive(admin_security_event_modelJSON, "security_event_text");
    if (cJSON_IsNull(security_event_text)) {
        security_event_text = NULL;
    }
    if (security_event_text) { 
    if(!cJSON_IsString(security_event_text) && !cJSON_IsNull(security_event_text))
    {
    goto end; //String
    }
    }

    // admin_security_event_model->is_opening_process_complete
    cJSON *is_opening_process_complete = cJSON_GetObjectItemCaseSensitive(admin_security_event_modelJSON, "is_opening_process_complete");
    if (cJSON_IsNull(is_opening_process_complete)) {
        is_opening_process_complete = NULL;
    }
    if (is_opening_process_complete) { 
    if(!cJSON_IsBool(is_opening_process_complete))
    {
    goto end; //Bool
    }
    }

    // admin_security_event_model->is_closing_process_complete
    cJSON *is_closing_process_complete = cJSON_GetObjectItemCaseSensitive(admin_security_event_modelJSON, "is_closing_process_complete");
    if (cJSON_IsNull(is_closing_process_complete)) {
        is_closing_process_complete = NULL;
    }
    if (is_closing_process_complete) { 
    if(!cJSON_IsBool(is_closing_process_complete))
    {
    goto end; //Bool
    }
    }


    admin_security_event_model_local_var = admin_security_event_model_create_internal (
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        timestamp_nanos ? timestamp_nanos->valuedouble : 0,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        security_event ? security_event->valuedouble : 0,
        security_event_code && !cJSON_IsNull(security_event_code) ? strdup(security_event_code->valuestring) : NULL,
        security_event_text && !cJSON_IsNull(security_event_text) ? strdup(security_event_text->valuestring) : NULL,
        is_opening_process_complete ? is_opening_process_complete->valueint : 0,
        is_closing_process_complete ? is_closing_process_complete->valueint : 0
        );

    return admin_security_event_model_local_var;
end:
    return NULL;

}
