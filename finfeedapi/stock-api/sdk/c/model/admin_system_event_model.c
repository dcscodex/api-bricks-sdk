#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "admin_system_event_model.h"



static admin_system_event_model_t *admin_system_event_model_create_internal(
    long timestamp_nanos,
    char *timestamp,
    int system_event,
    char *system_event_code,
    char *system_event_text,
    int is_system_event_start_of_messages,
    int is_system_event_start_of_system_hours,
    int is_system_event_start_of_regular_market_hours,
    int is_system_event_end_of_regular_market_hours,
    int is_system_event_end_of_system_hours,
    int is_system_event_end_of_messages
    ) {
    admin_system_event_model_t *admin_system_event_model_local_var = malloc(sizeof(admin_system_event_model_t));
    if (!admin_system_event_model_local_var) {
        return NULL;
    }
    admin_system_event_model_local_var->timestamp_nanos = timestamp_nanos;
    admin_system_event_model_local_var->timestamp = timestamp;
    admin_system_event_model_local_var->system_event = system_event;
    admin_system_event_model_local_var->system_event_code = system_event_code;
    admin_system_event_model_local_var->system_event_text = system_event_text;
    admin_system_event_model_local_var->is_system_event_start_of_messages = is_system_event_start_of_messages;
    admin_system_event_model_local_var->is_system_event_start_of_system_hours = is_system_event_start_of_system_hours;
    admin_system_event_model_local_var->is_system_event_start_of_regular_market_hours = is_system_event_start_of_regular_market_hours;
    admin_system_event_model_local_var->is_system_event_end_of_regular_market_hours = is_system_event_end_of_regular_market_hours;
    admin_system_event_model_local_var->is_system_event_end_of_system_hours = is_system_event_end_of_system_hours;
    admin_system_event_model_local_var->is_system_event_end_of_messages = is_system_event_end_of_messages;

    admin_system_event_model_local_var->_library_owned = 1;
    return admin_system_event_model_local_var;
}

__attribute__((deprecated)) admin_system_event_model_t *admin_system_event_model_create(
    long timestamp_nanos,
    char *timestamp,
    int system_event,
    char *system_event_code,
    char *system_event_text,
    int is_system_event_start_of_messages,
    int is_system_event_start_of_system_hours,
    int is_system_event_start_of_regular_market_hours,
    int is_system_event_end_of_regular_market_hours,
    int is_system_event_end_of_system_hours,
    int is_system_event_end_of_messages
    ) {
    return admin_system_event_model_create_internal (
        timestamp_nanos,
        timestamp,
        system_event,
        system_event_code,
        system_event_text,
        is_system_event_start_of_messages,
        is_system_event_start_of_system_hours,
        is_system_event_start_of_regular_market_hours,
        is_system_event_end_of_regular_market_hours,
        is_system_event_end_of_system_hours,
        is_system_event_end_of_messages
        );
}

void admin_system_event_model_free(admin_system_event_model_t *admin_system_event_model) {
    if(NULL == admin_system_event_model){
        return ;
    }
    if(admin_system_event_model->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "admin_system_event_model_free");
        return ;
    }
    listEntry_t *listEntry;
    if (admin_system_event_model->timestamp) {
        free(admin_system_event_model->timestamp);
        admin_system_event_model->timestamp = NULL;
    }
    if (admin_system_event_model->system_event_code) {
        free(admin_system_event_model->system_event_code);
        admin_system_event_model->system_event_code = NULL;
    }
    if (admin_system_event_model->system_event_text) {
        free(admin_system_event_model->system_event_text);
        admin_system_event_model->system_event_text = NULL;
    }
    free(admin_system_event_model);
}

cJSON *admin_system_event_model_convertToJSON(admin_system_event_model_t *admin_system_event_model) {
    cJSON *item = cJSON_CreateObject();

    // admin_system_event_model->timestamp_nanos
    if(admin_system_event_model->timestamp_nanos) {
    if(cJSON_AddNumberToObject(item, "timestamp_nanos", admin_system_event_model->timestamp_nanos) == NULL) {
    goto fail; //Numeric
    }
    }


    // admin_system_event_model->timestamp
    if(admin_system_event_model->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", admin_system_event_model->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // admin_system_event_model->system_event
    if(admin_system_event_model->system_event) {
    if(cJSON_AddNumberToObject(item, "system_event", admin_system_event_model->system_event) == NULL) {
    goto fail; //Numeric
    }
    }


    // admin_system_event_model->system_event_code
    if(admin_system_event_model->system_event_code) {
    if(cJSON_AddStringToObject(item, "system_event_code", admin_system_event_model->system_event_code) == NULL) {
    goto fail; //String
    }
    }


    // admin_system_event_model->system_event_text
    if(admin_system_event_model->system_event_text) {
    if(cJSON_AddStringToObject(item, "system_event_text", admin_system_event_model->system_event_text) == NULL) {
    goto fail; //String
    }
    }


    // admin_system_event_model->is_system_event_start_of_messages
    if(admin_system_event_model->is_system_event_start_of_messages) {
    if(cJSON_AddBoolToObject(item, "is_system_event_start_of_messages", admin_system_event_model->is_system_event_start_of_messages) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_system_event_model->is_system_event_start_of_system_hours
    if(admin_system_event_model->is_system_event_start_of_system_hours) {
    if(cJSON_AddBoolToObject(item, "is_system_event_start_of_system_hours", admin_system_event_model->is_system_event_start_of_system_hours) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_system_event_model->is_system_event_start_of_regular_market_hours
    if(admin_system_event_model->is_system_event_start_of_regular_market_hours) {
    if(cJSON_AddBoolToObject(item, "is_system_event_start_of_regular_market_hours", admin_system_event_model->is_system_event_start_of_regular_market_hours) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_system_event_model->is_system_event_end_of_regular_market_hours
    if(admin_system_event_model->is_system_event_end_of_regular_market_hours) {
    if(cJSON_AddBoolToObject(item, "is_system_event_end_of_regular_market_hours", admin_system_event_model->is_system_event_end_of_regular_market_hours) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_system_event_model->is_system_event_end_of_system_hours
    if(admin_system_event_model->is_system_event_end_of_system_hours) {
    if(cJSON_AddBoolToObject(item, "is_system_event_end_of_system_hours", admin_system_event_model->is_system_event_end_of_system_hours) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_system_event_model->is_system_event_end_of_messages
    if(admin_system_event_model->is_system_event_end_of_messages) {
    if(cJSON_AddBoolToObject(item, "is_system_event_end_of_messages", admin_system_event_model->is_system_event_end_of_messages) == NULL) {
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

admin_system_event_model_t *admin_system_event_model_parseFromJSON(cJSON *admin_system_event_modelJSON){

    admin_system_event_model_t *admin_system_event_model_local_var = NULL;

    // admin_system_event_model->timestamp_nanos
    cJSON *timestamp_nanos = cJSON_GetObjectItemCaseSensitive(admin_system_event_modelJSON, "timestamp_nanos");
    if (cJSON_IsNull(timestamp_nanos)) {
        timestamp_nanos = NULL;
    }
    if (timestamp_nanos) { 
    if(!cJSON_IsNumber(timestamp_nanos))
    {
    goto end; //Numeric
    }
    }

    // admin_system_event_model->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(admin_system_event_modelJSON, "timestamp");
    if (cJSON_IsNull(timestamp)) {
        timestamp = NULL;
    }
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //DateTime
    }
    }

    // admin_system_event_model->system_event
    cJSON *system_event = cJSON_GetObjectItemCaseSensitive(admin_system_event_modelJSON, "system_event");
    if (cJSON_IsNull(system_event)) {
        system_event = NULL;
    }
    if (system_event) { 
    if(!cJSON_IsNumber(system_event))
    {
    goto end; //Numeric
    }
    }

    // admin_system_event_model->system_event_code
    cJSON *system_event_code = cJSON_GetObjectItemCaseSensitive(admin_system_event_modelJSON, "system_event_code");
    if (cJSON_IsNull(system_event_code)) {
        system_event_code = NULL;
    }
    if (system_event_code) { 
    if(!cJSON_IsString(system_event_code) && !cJSON_IsNull(system_event_code))
    {
    goto end; //String
    }
    }

    // admin_system_event_model->system_event_text
    cJSON *system_event_text = cJSON_GetObjectItemCaseSensitive(admin_system_event_modelJSON, "system_event_text");
    if (cJSON_IsNull(system_event_text)) {
        system_event_text = NULL;
    }
    if (system_event_text) { 
    if(!cJSON_IsString(system_event_text) && !cJSON_IsNull(system_event_text))
    {
    goto end; //String
    }
    }

    // admin_system_event_model->is_system_event_start_of_messages
    cJSON *is_system_event_start_of_messages = cJSON_GetObjectItemCaseSensitive(admin_system_event_modelJSON, "is_system_event_start_of_messages");
    if (cJSON_IsNull(is_system_event_start_of_messages)) {
        is_system_event_start_of_messages = NULL;
    }
    if (is_system_event_start_of_messages) { 
    if(!cJSON_IsBool(is_system_event_start_of_messages))
    {
    goto end; //Bool
    }
    }

    // admin_system_event_model->is_system_event_start_of_system_hours
    cJSON *is_system_event_start_of_system_hours = cJSON_GetObjectItemCaseSensitive(admin_system_event_modelJSON, "is_system_event_start_of_system_hours");
    if (cJSON_IsNull(is_system_event_start_of_system_hours)) {
        is_system_event_start_of_system_hours = NULL;
    }
    if (is_system_event_start_of_system_hours) { 
    if(!cJSON_IsBool(is_system_event_start_of_system_hours))
    {
    goto end; //Bool
    }
    }

    // admin_system_event_model->is_system_event_start_of_regular_market_hours
    cJSON *is_system_event_start_of_regular_market_hours = cJSON_GetObjectItemCaseSensitive(admin_system_event_modelJSON, "is_system_event_start_of_regular_market_hours");
    if (cJSON_IsNull(is_system_event_start_of_regular_market_hours)) {
        is_system_event_start_of_regular_market_hours = NULL;
    }
    if (is_system_event_start_of_regular_market_hours) { 
    if(!cJSON_IsBool(is_system_event_start_of_regular_market_hours))
    {
    goto end; //Bool
    }
    }

    // admin_system_event_model->is_system_event_end_of_regular_market_hours
    cJSON *is_system_event_end_of_regular_market_hours = cJSON_GetObjectItemCaseSensitive(admin_system_event_modelJSON, "is_system_event_end_of_regular_market_hours");
    if (cJSON_IsNull(is_system_event_end_of_regular_market_hours)) {
        is_system_event_end_of_regular_market_hours = NULL;
    }
    if (is_system_event_end_of_regular_market_hours) { 
    if(!cJSON_IsBool(is_system_event_end_of_regular_market_hours))
    {
    goto end; //Bool
    }
    }

    // admin_system_event_model->is_system_event_end_of_system_hours
    cJSON *is_system_event_end_of_system_hours = cJSON_GetObjectItemCaseSensitive(admin_system_event_modelJSON, "is_system_event_end_of_system_hours");
    if (cJSON_IsNull(is_system_event_end_of_system_hours)) {
        is_system_event_end_of_system_hours = NULL;
    }
    if (is_system_event_end_of_system_hours) { 
    if(!cJSON_IsBool(is_system_event_end_of_system_hours))
    {
    goto end; //Bool
    }
    }

    // admin_system_event_model->is_system_event_end_of_messages
    cJSON *is_system_event_end_of_messages = cJSON_GetObjectItemCaseSensitive(admin_system_event_modelJSON, "is_system_event_end_of_messages");
    if (cJSON_IsNull(is_system_event_end_of_messages)) {
        is_system_event_end_of_messages = NULL;
    }
    if (is_system_event_end_of_messages) { 
    if(!cJSON_IsBool(is_system_event_end_of_messages))
    {
    goto end; //Bool
    }
    }


    admin_system_event_model_local_var = admin_system_event_model_create_internal (
        timestamp_nanos ? timestamp_nanos->valuedouble : 0,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        system_event ? system_event->valuedouble : 0,
        system_event_code && !cJSON_IsNull(system_event_code) ? strdup(system_event_code->valuestring) : NULL,
        system_event_text && !cJSON_IsNull(system_event_text) ? strdup(system_event_text->valuestring) : NULL,
        is_system_event_start_of_messages ? is_system_event_start_of_messages->valueint : 0,
        is_system_event_start_of_system_hours ? is_system_event_start_of_system_hours->valueint : 0,
        is_system_event_start_of_regular_market_hours ? is_system_event_start_of_regular_market_hours->valueint : 0,
        is_system_event_end_of_regular_market_hours ? is_system_event_end_of_regular_market_hours->valueint : 0,
        is_system_event_end_of_system_hours ? is_system_event_end_of_system_hours->valueint : 0,
        is_system_event_end_of_messages ? is_system_event_end_of_messages->valueint : 0
        );

    return admin_system_event_model_local_var;
end:
    return NULL;

}
