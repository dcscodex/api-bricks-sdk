#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_metric_data.h"



static v1_metric_data_t *v1_metric_data_create_internal(
    char *symbol_id,
    char *time,
    double value
    ) {
    v1_metric_data_t *v1_metric_data_local_var = malloc(sizeof(v1_metric_data_t));
    if (!v1_metric_data_local_var) {
        return NULL;
    }
    v1_metric_data_local_var->symbol_id = symbol_id;
    v1_metric_data_local_var->time = time;
    v1_metric_data_local_var->value = value;

    v1_metric_data_local_var->_library_owned = 1;
    return v1_metric_data_local_var;
}

__attribute__((deprecated)) v1_metric_data_t *v1_metric_data_create(
    char *symbol_id,
    char *time,
    double value
    ) {
    return v1_metric_data_create_internal (
        symbol_id,
        time,
        value
        );
}

void v1_metric_data_free(v1_metric_data_t *v1_metric_data) {
    if(NULL == v1_metric_data){
        return ;
    }
    if(v1_metric_data->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_metric_data_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_metric_data->symbol_id) {
        free(v1_metric_data->symbol_id);
        v1_metric_data->symbol_id = NULL;
    }
    if (v1_metric_data->time) {
        free(v1_metric_data->time);
        v1_metric_data->time = NULL;
    }
    free(v1_metric_data);
}

cJSON *v1_metric_data_convertToJSON(v1_metric_data_t *v1_metric_data) {
    cJSON *item = cJSON_CreateObject();

    // v1_metric_data->symbol_id
    if(v1_metric_data->symbol_id) {
    if(cJSON_AddStringToObject(item, "symbol_id", v1_metric_data->symbol_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_metric_data->time
    if(v1_metric_data->time) {
    if(cJSON_AddStringToObject(item, "time", v1_metric_data->time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_metric_data->value
    if(v1_metric_data->value) {
    if(cJSON_AddNumberToObject(item, "value", v1_metric_data->value) == NULL) {
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

v1_metric_data_t *v1_metric_data_parseFromJSON(cJSON *v1_metric_dataJSON){

    v1_metric_data_t *v1_metric_data_local_var = NULL;

    // v1_metric_data->symbol_id
    cJSON *symbol_id = cJSON_GetObjectItemCaseSensitive(v1_metric_dataJSON, "symbol_id");
    if (cJSON_IsNull(symbol_id)) {
        symbol_id = NULL;
    }
    if (symbol_id) { 
    if(!cJSON_IsString(symbol_id) && !cJSON_IsNull(symbol_id))
    {
    goto end; //String
    }
    }

    // v1_metric_data->time
    cJSON *time = cJSON_GetObjectItemCaseSensitive(v1_metric_dataJSON, "time");
    if (cJSON_IsNull(time)) {
        time = NULL;
    }
    if (time) { 
    if(!cJSON_IsString(time) && !cJSON_IsNull(time))
    {
    goto end; //DateTime
    }
    }

    // v1_metric_data->value
    cJSON *value = cJSON_GetObjectItemCaseSensitive(v1_metric_dataJSON, "value");
    if (cJSON_IsNull(value)) {
        value = NULL;
    }
    if (value) { 
    if(!cJSON_IsNumber(value))
    {
    goto end; //Numeric
    }
    }


    v1_metric_data_local_var = v1_metric_data_create_internal (
        symbol_id && !cJSON_IsNull(symbol_id) ? strdup(symbol_id->valuestring) : NULL,
        time && !cJSON_IsNull(time) ? strdup(time->valuestring) : NULL,
        value ? value->valuedouble : 0
        );

    return v1_metric_data_local_var;
end:
    return NULL;

}
