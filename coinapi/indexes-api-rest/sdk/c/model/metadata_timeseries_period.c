#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "metadata_timeseries_period.h"



static metadata_timeseries_period_t *metadata_timeseries_period_create_internal(
    char *period_id,
    int length_seconds,
    int length_months,
    int unit_count,
    char *unit_name,
    char *display_name
    ) {
    metadata_timeseries_period_t *metadata_timeseries_period_local_var = malloc(sizeof(metadata_timeseries_period_t));
    if (!metadata_timeseries_period_local_var) {
        return NULL;
    }
    metadata_timeseries_period_local_var->period_id = period_id;
    metadata_timeseries_period_local_var->length_seconds = length_seconds;
    metadata_timeseries_period_local_var->length_months = length_months;
    metadata_timeseries_period_local_var->unit_count = unit_count;
    metadata_timeseries_period_local_var->unit_name = unit_name;
    metadata_timeseries_period_local_var->display_name = display_name;

    metadata_timeseries_period_local_var->_library_owned = 1;
    return metadata_timeseries_period_local_var;
}

__attribute__((deprecated)) metadata_timeseries_period_t *metadata_timeseries_period_create(
    char *period_id,
    int length_seconds,
    int length_months,
    int unit_count,
    char *unit_name,
    char *display_name
    ) {
    return metadata_timeseries_period_create_internal (
        period_id,
        length_seconds,
        length_months,
        unit_count,
        unit_name,
        display_name
        );
}

void metadata_timeseries_period_free(metadata_timeseries_period_t *metadata_timeseries_period) {
    if(NULL == metadata_timeseries_period){
        return ;
    }
    if(metadata_timeseries_period->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "metadata_timeseries_period_free");
        return ;
    }
    listEntry_t *listEntry;
    if (metadata_timeseries_period->period_id) {
        free(metadata_timeseries_period->period_id);
        metadata_timeseries_period->period_id = NULL;
    }
    if (metadata_timeseries_period->unit_name) {
        free(metadata_timeseries_period->unit_name);
        metadata_timeseries_period->unit_name = NULL;
    }
    if (metadata_timeseries_period->display_name) {
        free(metadata_timeseries_period->display_name);
        metadata_timeseries_period->display_name = NULL;
    }
    free(metadata_timeseries_period);
}

cJSON *metadata_timeseries_period_convertToJSON(metadata_timeseries_period_t *metadata_timeseries_period) {
    cJSON *item = cJSON_CreateObject();

    // metadata_timeseries_period->period_id
    if(metadata_timeseries_period->period_id) {
    if(cJSON_AddStringToObject(item, "period_id", metadata_timeseries_period->period_id) == NULL) {
    goto fail; //String
    }
    }


    // metadata_timeseries_period->length_seconds
    if(metadata_timeseries_period->length_seconds) {
    if(cJSON_AddNumberToObject(item, "length_seconds", metadata_timeseries_period->length_seconds) == NULL) {
    goto fail; //Numeric
    }
    }


    // metadata_timeseries_period->length_months
    if(metadata_timeseries_period->length_months) {
    if(cJSON_AddNumberToObject(item, "length_months", metadata_timeseries_period->length_months) == NULL) {
    goto fail; //Numeric
    }
    }


    // metadata_timeseries_period->unit_count
    if(metadata_timeseries_period->unit_count) {
    if(cJSON_AddNumberToObject(item, "unit_count", metadata_timeseries_period->unit_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // metadata_timeseries_period->unit_name
    if(metadata_timeseries_period->unit_name) {
    if(cJSON_AddStringToObject(item, "unit_name", metadata_timeseries_period->unit_name) == NULL) {
    goto fail; //String
    }
    }


    // metadata_timeseries_period->display_name
    if(metadata_timeseries_period->display_name) {
    if(cJSON_AddStringToObject(item, "display_name", metadata_timeseries_period->display_name) == NULL) {
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

metadata_timeseries_period_t *metadata_timeseries_period_parseFromJSON(cJSON *metadata_timeseries_periodJSON){

    metadata_timeseries_period_t *metadata_timeseries_period_local_var = NULL;

    // metadata_timeseries_period->period_id
    cJSON *period_id = cJSON_GetObjectItemCaseSensitive(metadata_timeseries_periodJSON, "period_id");
    if (cJSON_IsNull(period_id)) {
        period_id = NULL;
    }
    if (period_id) { 
    if(!cJSON_IsString(period_id) && !cJSON_IsNull(period_id))
    {
    goto end; //String
    }
    }

    // metadata_timeseries_period->length_seconds
    cJSON *length_seconds = cJSON_GetObjectItemCaseSensitive(metadata_timeseries_periodJSON, "length_seconds");
    if (cJSON_IsNull(length_seconds)) {
        length_seconds = NULL;
    }
    if (length_seconds) { 
    if(!cJSON_IsNumber(length_seconds))
    {
    goto end; //Numeric
    }
    }

    // metadata_timeseries_period->length_months
    cJSON *length_months = cJSON_GetObjectItemCaseSensitive(metadata_timeseries_periodJSON, "length_months");
    if (cJSON_IsNull(length_months)) {
        length_months = NULL;
    }
    if (length_months) { 
    if(!cJSON_IsNumber(length_months))
    {
    goto end; //Numeric
    }
    }

    // metadata_timeseries_period->unit_count
    cJSON *unit_count = cJSON_GetObjectItemCaseSensitive(metadata_timeseries_periodJSON, "unit_count");
    if (cJSON_IsNull(unit_count)) {
        unit_count = NULL;
    }
    if (unit_count) { 
    if(!cJSON_IsNumber(unit_count))
    {
    goto end; //Numeric
    }
    }

    // metadata_timeseries_period->unit_name
    cJSON *unit_name = cJSON_GetObjectItemCaseSensitive(metadata_timeseries_periodJSON, "unit_name");
    if (cJSON_IsNull(unit_name)) {
        unit_name = NULL;
    }
    if (unit_name) { 
    if(!cJSON_IsString(unit_name) && !cJSON_IsNull(unit_name))
    {
    goto end; //String
    }
    }

    // metadata_timeseries_period->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(metadata_timeseries_periodJSON, "display_name");
    if (cJSON_IsNull(display_name)) {
        display_name = NULL;
    }
    if (display_name) { 
    if(!cJSON_IsString(display_name) && !cJSON_IsNull(display_name))
    {
    goto end; //String
    }
    }


    metadata_timeseries_period_local_var = metadata_timeseries_period_create_internal (
        period_id && !cJSON_IsNull(period_id) ? strdup(period_id->valuestring) : NULL,
        length_seconds ? length_seconds->valuedouble : 0,
        length_months ? length_months->valuedouble : 0,
        unit_count ? unit_count->valuedouble : 0,
        unit_name && !cJSON_IsNull(unit_name) ? strdup(unit_name->valuestring) : NULL,
        display_name && !cJSON_IsNull(display_name) ? strdup(display_name->valuestring) : NULL
        );

    return metadata_timeseries_period_local_var;
end:
    return NULL;

}
