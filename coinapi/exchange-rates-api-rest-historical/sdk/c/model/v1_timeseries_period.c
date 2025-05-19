#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_timeseries_period.h"



static v1_timeseries_period_t *v1_timeseries_period_create_internal(
    char *period_id,
    int length_seconds,
    int length_months,
    int unit_count,
    char *unit_name,
    char *display_name
    ) {
    v1_timeseries_period_t *v1_timeseries_period_local_var = malloc(sizeof(v1_timeseries_period_t));
    if (!v1_timeseries_period_local_var) {
        return NULL;
    }
    v1_timeseries_period_local_var->period_id = period_id;
    v1_timeseries_period_local_var->length_seconds = length_seconds;
    v1_timeseries_period_local_var->length_months = length_months;
    v1_timeseries_period_local_var->unit_count = unit_count;
    v1_timeseries_period_local_var->unit_name = unit_name;
    v1_timeseries_period_local_var->display_name = display_name;

    v1_timeseries_period_local_var->_library_owned = 1;
    return v1_timeseries_period_local_var;
}

__attribute__((deprecated)) v1_timeseries_period_t *v1_timeseries_period_create(
    char *period_id,
    int length_seconds,
    int length_months,
    int unit_count,
    char *unit_name,
    char *display_name
    ) {
    return v1_timeseries_period_create_internal (
        period_id,
        length_seconds,
        length_months,
        unit_count,
        unit_name,
        display_name
        );
}

void v1_timeseries_period_free(v1_timeseries_period_t *v1_timeseries_period) {
    if(NULL == v1_timeseries_period){
        return ;
    }
    if(v1_timeseries_period->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_timeseries_period_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_timeseries_period->period_id) {
        free(v1_timeseries_period->period_id);
        v1_timeseries_period->period_id = NULL;
    }
    if (v1_timeseries_period->unit_name) {
        free(v1_timeseries_period->unit_name);
        v1_timeseries_period->unit_name = NULL;
    }
    if (v1_timeseries_period->display_name) {
        free(v1_timeseries_period->display_name);
        v1_timeseries_period->display_name = NULL;
    }
    free(v1_timeseries_period);
}

cJSON *v1_timeseries_period_convertToJSON(v1_timeseries_period_t *v1_timeseries_period) {
    cJSON *item = cJSON_CreateObject();

    // v1_timeseries_period->period_id
    if(v1_timeseries_period->period_id) {
    if(cJSON_AddStringToObject(item, "period_id", v1_timeseries_period->period_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_timeseries_period->length_seconds
    if(v1_timeseries_period->length_seconds) {
    if(cJSON_AddNumberToObject(item, "length_seconds", v1_timeseries_period->length_seconds) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_timeseries_period->length_months
    if(v1_timeseries_period->length_months) {
    if(cJSON_AddNumberToObject(item, "length_months", v1_timeseries_period->length_months) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_timeseries_period->unit_count
    if(v1_timeseries_period->unit_count) {
    if(cJSON_AddNumberToObject(item, "unit_count", v1_timeseries_period->unit_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_timeseries_period->unit_name
    if(v1_timeseries_period->unit_name) {
    if(cJSON_AddStringToObject(item, "unit_name", v1_timeseries_period->unit_name) == NULL) {
    goto fail; //String
    }
    }


    // v1_timeseries_period->display_name
    if(v1_timeseries_period->display_name) {
    if(cJSON_AddStringToObject(item, "display_name", v1_timeseries_period->display_name) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

v1_timeseries_period_t *v1_timeseries_period_parseFromJSON(cJSON *v1_timeseries_periodJSON){

    v1_timeseries_period_t *v1_timeseries_period_local_var = NULL;

    // v1_timeseries_period->period_id
    cJSON *period_id = cJSON_GetObjectItemCaseSensitive(v1_timeseries_periodJSON, "period_id");
    if (cJSON_IsNull(period_id)) {
        period_id = NULL;
    }
    if (period_id) { 
    if(!cJSON_IsString(period_id) && !cJSON_IsNull(period_id))
    {
    goto end; //String
    }
    }

    // v1_timeseries_period->length_seconds
    cJSON *length_seconds = cJSON_GetObjectItemCaseSensitive(v1_timeseries_periodJSON, "length_seconds");
    if (cJSON_IsNull(length_seconds)) {
        length_seconds = NULL;
    }
    if (length_seconds) { 
    if(!cJSON_IsNumber(length_seconds))
    {
    goto end; //Numeric
    }
    }

    // v1_timeseries_period->length_months
    cJSON *length_months = cJSON_GetObjectItemCaseSensitive(v1_timeseries_periodJSON, "length_months");
    if (cJSON_IsNull(length_months)) {
        length_months = NULL;
    }
    if (length_months) { 
    if(!cJSON_IsNumber(length_months))
    {
    goto end; //Numeric
    }
    }

    // v1_timeseries_period->unit_count
    cJSON *unit_count = cJSON_GetObjectItemCaseSensitive(v1_timeseries_periodJSON, "unit_count");
    if (cJSON_IsNull(unit_count)) {
        unit_count = NULL;
    }
    if (unit_count) { 
    if(!cJSON_IsNumber(unit_count))
    {
    goto end; //Numeric
    }
    }

    // v1_timeseries_period->unit_name
    cJSON *unit_name = cJSON_GetObjectItemCaseSensitive(v1_timeseries_periodJSON, "unit_name");
    if (cJSON_IsNull(unit_name)) {
        unit_name = NULL;
    }
    if (unit_name) { 
    if(!cJSON_IsString(unit_name) && !cJSON_IsNull(unit_name))
    {
    goto end; //String
    }
    }

    // v1_timeseries_period->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(v1_timeseries_periodJSON, "display_name");
    if (cJSON_IsNull(display_name)) {
        display_name = NULL;
    }
    if (display_name) { 
    if(!cJSON_IsString(display_name) && !cJSON_IsNull(display_name))
    {
    goto end; //String
    }
    }


    v1_timeseries_period_local_var = v1_timeseries_period_create_internal (
        period_id && !cJSON_IsNull(period_id) ? strdup(period_id->valuestring) : NULL,
        length_seconds ? length_seconds->valuedouble : 0,
        length_months ? length_months->valuedouble : 0,
        unit_count ? unit_count->valuedouble : 0,
        unit_name && !cJSON_IsNull(unit_name) ? strdup(unit_name->valuestring) : NULL,
        display_name && !cJSON_IsNull(display_name) ? strdup(display_name->valuestring) : NULL
        );

    return v1_timeseries_period_local_var;
end:
    return NULL;

}
