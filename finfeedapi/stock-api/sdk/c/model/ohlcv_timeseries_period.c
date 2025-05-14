#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ohlcv_timeseries_period.h"



static ohlcv_timeseries_period_t *ohlcv_timeseries_period_create_internal(
    char *period_id,
    int length_seconds,
    int length_months,
    int unit_count,
    char *unit_name,
    char *display_name
    ) {
    ohlcv_timeseries_period_t *ohlcv_timeseries_period_local_var = malloc(sizeof(ohlcv_timeseries_period_t));
    if (!ohlcv_timeseries_period_local_var) {
        return NULL;
    }
    ohlcv_timeseries_period_local_var->period_id = period_id;
    ohlcv_timeseries_period_local_var->length_seconds = length_seconds;
    ohlcv_timeseries_period_local_var->length_months = length_months;
    ohlcv_timeseries_period_local_var->unit_count = unit_count;
    ohlcv_timeseries_period_local_var->unit_name = unit_name;
    ohlcv_timeseries_period_local_var->display_name = display_name;

    ohlcv_timeseries_period_local_var->_library_owned = 1;
    return ohlcv_timeseries_period_local_var;
}

__attribute__((deprecated)) ohlcv_timeseries_period_t *ohlcv_timeseries_period_create(
    char *period_id,
    int length_seconds,
    int length_months,
    int unit_count,
    char *unit_name,
    char *display_name
    ) {
    return ohlcv_timeseries_period_create_internal (
        period_id,
        length_seconds,
        length_months,
        unit_count,
        unit_name,
        display_name
        );
}

void ohlcv_timeseries_period_free(ohlcv_timeseries_period_t *ohlcv_timeseries_period) {
    if(NULL == ohlcv_timeseries_period){
        return ;
    }
    if(ohlcv_timeseries_period->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ohlcv_timeseries_period_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ohlcv_timeseries_period->period_id) {
        free(ohlcv_timeseries_period->period_id);
        ohlcv_timeseries_period->period_id = NULL;
    }
    if (ohlcv_timeseries_period->unit_name) {
        free(ohlcv_timeseries_period->unit_name);
        ohlcv_timeseries_period->unit_name = NULL;
    }
    if (ohlcv_timeseries_period->display_name) {
        free(ohlcv_timeseries_period->display_name);
        ohlcv_timeseries_period->display_name = NULL;
    }
    free(ohlcv_timeseries_period);
}

cJSON *ohlcv_timeseries_period_convertToJSON(ohlcv_timeseries_period_t *ohlcv_timeseries_period) {
    cJSON *item = cJSON_CreateObject();

    // ohlcv_timeseries_period->period_id
    if(ohlcv_timeseries_period->period_id) {
    if(cJSON_AddStringToObject(item, "period_id", ohlcv_timeseries_period->period_id) == NULL) {
    goto fail; //String
    }
    }


    // ohlcv_timeseries_period->length_seconds
    if(ohlcv_timeseries_period->length_seconds) {
    if(cJSON_AddNumberToObject(item, "length_seconds", ohlcv_timeseries_period->length_seconds) == NULL) {
    goto fail; //Numeric
    }
    }


    // ohlcv_timeseries_period->length_months
    if(ohlcv_timeseries_period->length_months) {
    if(cJSON_AddNumberToObject(item, "length_months", ohlcv_timeseries_period->length_months) == NULL) {
    goto fail; //Numeric
    }
    }


    // ohlcv_timeseries_period->unit_count
    if(ohlcv_timeseries_period->unit_count) {
    if(cJSON_AddNumberToObject(item, "unit_count", ohlcv_timeseries_period->unit_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // ohlcv_timeseries_period->unit_name
    if(ohlcv_timeseries_period->unit_name) {
    if(cJSON_AddStringToObject(item, "unit_name", ohlcv_timeseries_period->unit_name) == NULL) {
    goto fail; //String
    }
    }


    // ohlcv_timeseries_period->display_name
    if(ohlcv_timeseries_period->display_name) {
    if(cJSON_AddStringToObject(item, "display_name", ohlcv_timeseries_period->display_name) == NULL) {
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

ohlcv_timeseries_period_t *ohlcv_timeseries_period_parseFromJSON(cJSON *ohlcv_timeseries_periodJSON){

    ohlcv_timeseries_period_t *ohlcv_timeseries_period_local_var = NULL;

    // ohlcv_timeseries_period->period_id
    cJSON *period_id = cJSON_GetObjectItemCaseSensitive(ohlcv_timeseries_periodJSON, "period_id");
    if (cJSON_IsNull(period_id)) {
        period_id = NULL;
    }
    if (period_id) { 
    if(!cJSON_IsString(period_id) && !cJSON_IsNull(period_id))
    {
    goto end; //String
    }
    }

    // ohlcv_timeseries_period->length_seconds
    cJSON *length_seconds = cJSON_GetObjectItemCaseSensitive(ohlcv_timeseries_periodJSON, "length_seconds");
    if (cJSON_IsNull(length_seconds)) {
        length_seconds = NULL;
    }
    if (length_seconds) { 
    if(!cJSON_IsNumber(length_seconds))
    {
    goto end; //Numeric
    }
    }

    // ohlcv_timeseries_period->length_months
    cJSON *length_months = cJSON_GetObjectItemCaseSensitive(ohlcv_timeseries_periodJSON, "length_months");
    if (cJSON_IsNull(length_months)) {
        length_months = NULL;
    }
    if (length_months) { 
    if(!cJSON_IsNumber(length_months))
    {
    goto end; //Numeric
    }
    }

    // ohlcv_timeseries_period->unit_count
    cJSON *unit_count = cJSON_GetObjectItemCaseSensitive(ohlcv_timeseries_periodJSON, "unit_count");
    if (cJSON_IsNull(unit_count)) {
        unit_count = NULL;
    }
    if (unit_count) { 
    if(!cJSON_IsNumber(unit_count))
    {
    goto end; //Numeric
    }
    }

    // ohlcv_timeseries_period->unit_name
    cJSON *unit_name = cJSON_GetObjectItemCaseSensitive(ohlcv_timeseries_periodJSON, "unit_name");
    if (cJSON_IsNull(unit_name)) {
        unit_name = NULL;
    }
    if (unit_name) { 
    if(!cJSON_IsString(unit_name) && !cJSON_IsNull(unit_name))
    {
    goto end; //String
    }
    }

    // ohlcv_timeseries_period->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(ohlcv_timeseries_periodJSON, "display_name");
    if (cJSON_IsNull(display_name)) {
        display_name = NULL;
    }
    if (display_name) { 
    if(!cJSON_IsString(display_name) && !cJSON_IsNull(display_name))
    {
    goto end; //String
    }
    }


    ohlcv_timeseries_period_local_var = ohlcv_timeseries_period_create_internal (
        period_id && !cJSON_IsNull(period_id) ? strdup(period_id->valuestring) : NULL,
        length_seconds ? length_seconds->valuedouble : 0,
        length_months ? length_months->valuedouble : 0,
        unit_count ? unit_count->valuedouble : 0,
        unit_name && !cJSON_IsNull(unit_name) ? strdup(unit_name->valuestring) : NULL,
        display_name && !cJSON_IsNull(display_name) ? strdup(display_name->valuestring) : NULL
        );

    return ohlcv_timeseries_period_local_var;
end:
    return NULL;

}
