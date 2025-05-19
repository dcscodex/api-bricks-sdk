#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "indexes_index_timeseries_item.h"



static indexes_index_timeseries_item_t *indexes_index_timeseries_item_create_internal(
    char *time_period_start,
    char *time_period_end,
    char *time_open,
    char *time_close,
    double value_open,
    double value_high,
    double value_low,
    double value_close,
    long value_count
    ) {
    indexes_index_timeseries_item_t *indexes_index_timeseries_item_local_var = malloc(sizeof(indexes_index_timeseries_item_t));
    if (!indexes_index_timeseries_item_local_var) {
        return NULL;
    }
    indexes_index_timeseries_item_local_var->time_period_start = time_period_start;
    indexes_index_timeseries_item_local_var->time_period_end = time_period_end;
    indexes_index_timeseries_item_local_var->time_open = time_open;
    indexes_index_timeseries_item_local_var->time_close = time_close;
    indexes_index_timeseries_item_local_var->value_open = value_open;
    indexes_index_timeseries_item_local_var->value_high = value_high;
    indexes_index_timeseries_item_local_var->value_low = value_low;
    indexes_index_timeseries_item_local_var->value_close = value_close;
    indexes_index_timeseries_item_local_var->value_count = value_count;

    indexes_index_timeseries_item_local_var->_library_owned = 1;
    return indexes_index_timeseries_item_local_var;
}

__attribute__((deprecated)) indexes_index_timeseries_item_t *indexes_index_timeseries_item_create(
    char *time_period_start,
    char *time_period_end,
    char *time_open,
    char *time_close,
    double value_open,
    double value_high,
    double value_low,
    double value_close,
    long value_count
    ) {
    return indexes_index_timeseries_item_create_internal (
        time_period_start,
        time_period_end,
        time_open,
        time_close,
        value_open,
        value_high,
        value_low,
        value_close,
        value_count
        );
}

void indexes_index_timeseries_item_free(indexes_index_timeseries_item_t *indexes_index_timeseries_item) {
    if(NULL == indexes_index_timeseries_item){
        return ;
    }
    if(indexes_index_timeseries_item->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "indexes_index_timeseries_item_free");
        return ;
    }
    listEntry_t *listEntry;
    if (indexes_index_timeseries_item->time_period_start) {
        free(indexes_index_timeseries_item->time_period_start);
        indexes_index_timeseries_item->time_period_start = NULL;
    }
    if (indexes_index_timeseries_item->time_period_end) {
        free(indexes_index_timeseries_item->time_period_end);
        indexes_index_timeseries_item->time_period_end = NULL;
    }
    if (indexes_index_timeseries_item->time_open) {
        free(indexes_index_timeseries_item->time_open);
        indexes_index_timeseries_item->time_open = NULL;
    }
    if (indexes_index_timeseries_item->time_close) {
        free(indexes_index_timeseries_item->time_close);
        indexes_index_timeseries_item->time_close = NULL;
    }
    free(indexes_index_timeseries_item);
}

cJSON *indexes_index_timeseries_item_convertToJSON(indexes_index_timeseries_item_t *indexes_index_timeseries_item) {
    cJSON *item = cJSON_CreateObject();

    // indexes_index_timeseries_item->time_period_start
    if(indexes_index_timeseries_item->time_period_start) {
    if(cJSON_AddStringToObject(item, "time_period_start", indexes_index_timeseries_item->time_period_start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // indexes_index_timeseries_item->time_period_end
    if(indexes_index_timeseries_item->time_period_end) {
    if(cJSON_AddStringToObject(item, "time_period_end", indexes_index_timeseries_item->time_period_end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // indexes_index_timeseries_item->time_open
    if(indexes_index_timeseries_item->time_open) {
    if(cJSON_AddStringToObject(item, "time_open", indexes_index_timeseries_item->time_open) == NULL) {
    goto fail; //Date-Time
    }
    }


    // indexes_index_timeseries_item->time_close
    if(indexes_index_timeseries_item->time_close) {
    if(cJSON_AddStringToObject(item, "time_close", indexes_index_timeseries_item->time_close) == NULL) {
    goto fail; //Date-Time
    }
    }


    // indexes_index_timeseries_item->value_open
    if(indexes_index_timeseries_item->value_open) {
    if(cJSON_AddNumberToObject(item, "value_open", indexes_index_timeseries_item->value_open) == NULL) {
    goto fail; //Numeric
    }
    }


    // indexes_index_timeseries_item->value_high
    if(indexes_index_timeseries_item->value_high) {
    if(cJSON_AddNumberToObject(item, "value_high", indexes_index_timeseries_item->value_high) == NULL) {
    goto fail; //Numeric
    }
    }


    // indexes_index_timeseries_item->value_low
    if(indexes_index_timeseries_item->value_low) {
    if(cJSON_AddNumberToObject(item, "value_low", indexes_index_timeseries_item->value_low) == NULL) {
    goto fail; //Numeric
    }
    }


    // indexes_index_timeseries_item->value_close
    if(indexes_index_timeseries_item->value_close) {
    if(cJSON_AddNumberToObject(item, "value_close", indexes_index_timeseries_item->value_close) == NULL) {
    goto fail; //Numeric
    }
    }


    // indexes_index_timeseries_item->value_count
    if(indexes_index_timeseries_item->value_count) {
    if(cJSON_AddNumberToObject(item, "value_count", indexes_index_timeseries_item->value_count) == NULL) {
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

indexes_index_timeseries_item_t *indexes_index_timeseries_item_parseFromJSON(cJSON *indexes_index_timeseries_itemJSON){

    indexes_index_timeseries_item_t *indexes_index_timeseries_item_local_var = NULL;

    // indexes_index_timeseries_item->time_period_start
    cJSON *time_period_start = cJSON_GetObjectItemCaseSensitive(indexes_index_timeseries_itemJSON, "time_period_start");
    if (cJSON_IsNull(time_period_start)) {
        time_period_start = NULL;
    }
    if (time_period_start) { 
    if(!cJSON_IsString(time_period_start) && !cJSON_IsNull(time_period_start))
    {
    goto end; //DateTime
    }
    }

    // indexes_index_timeseries_item->time_period_end
    cJSON *time_period_end = cJSON_GetObjectItemCaseSensitive(indexes_index_timeseries_itemJSON, "time_period_end");
    if (cJSON_IsNull(time_period_end)) {
        time_period_end = NULL;
    }
    if (time_period_end) { 
    if(!cJSON_IsString(time_period_end) && !cJSON_IsNull(time_period_end))
    {
    goto end; //DateTime
    }
    }

    // indexes_index_timeseries_item->time_open
    cJSON *time_open = cJSON_GetObjectItemCaseSensitive(indexes_index_timeseries_itemJSON, "time_open");
    if (cJSON_IsNull(time_open)) {
        time_open = NULL;
    }
    if (time_open) { 
    if(!cJSON_IsString(time_open) && !cJSON_IsNull(time_open))
    {
    goto end; //DateTime
    }
    }

    // indexes_index_timeseries_item->time_close
    cJSON *time_close = cJSON_GetObjectItemCaseSensitive(indexes_index_timeseries_itemJSON, "time_close");
    if (cJSON_IsNull(time_close)) {
        time_close = NULL;
    }
    if (time_close) { 
    if(!cJSON_IsString(time_close) && !cJSON_IsNull(time_close))
    {
    goto end; //DateTime
    }
    }

    // indexes_index_timeseries_item->value_open
    cJSON *value_open = cJSON_GetObjectItemCaseSensitive(indexes_index_timeseries_itemJSON, "value_open");
    if (cJSON_IsNull(value_open)) {
        value_open = NULL;
    }
    if (value_open) { 
    if(!cJSON_IsNumber(value_open))
    {
    goto end; //Numeric
    }
    }

    // indexes_index_timeseries_item->value_high
    cJSON *value_high = cJSON_GetObjectItemCaseSensitive(indexes_index_timeseries_itemJSON, "value_high");
    if (cJSON_IsNull(value_high)) {
        value_high = NULL;
    }
    if (value_high) { 
    if(!cJSON_IsNumber(value_high))
    {
    goto end; //Numeric
    }
    }

    // indexes_index_timeseries_item->value_low
    cJSON *value_low = cJSON_GetObjectItemCaseSensitive(indexes_index_timeseries_itemJSON, "value_low");
    if (cJSON_IsNull(value_low)) {
        value_low = NULL;
    }
    if (value_low) { 
    if(!cJSON_IsNumber(value_low))
    {
    goto end; //Numeric
    }
    }

    // indexes_index_timeseries_item->value_close
    cJSON *value_close = cJSON_GetObjectItemCaseSensitive(indexes_index_timeseries_itemJSON, "value_close");
    if (cJSON_IsNull(value_close)) {
        value_close = NULL;
    }
    if (value_close) { 
    if(!cJSON_IsNumber(value_close))
    {
    goto end; //Numeric
    }
    }

    // indexes_index_timeseries_item->value_count
    cJSON *value_count = cJSON_GetObjectItemCaseSensitive(indexes_index_timeseries_itemJSON, "value_count");
    if (cJSON_IsNull(value_count)) {
        value_count = NULL;
    }
    if (value_count) { 
    if(!cJSON_IsNumber(value_count))
    {
    goto end; //Numeric
    }
    }


    indexes_index_timeseries_item_local_var = indexes_index_timeseries_item_create_internal (
        time_period_start && !cJSON_IsNull(time_period_start) ? strdup(time_period_start->valuestring) : NULL,
        time_period_end && !cJSON_IsNull(time_period_end) ? strdup(time_period_end->valuestring) : NULL,
        time_open && !cJSON_IsNull(time_open) ? strdup(time_open->valuestring) : NULL,
        time_close && !cJSON_IsNull(time_close) ? strdup(time_close->valuestring) : NULL,
        value_open ? value_open->valuedouble : 0,
        value_high ? value_high->valuedouble : 0,
        value_low ? value_low->valuedouble : 0,
        value_close ? value_close->valuedouble : 0,
        value_count ? value_count->valuedouble : 0
        );

    return indexes_index_timeseries_item_local_var;
end:
    return NULL;

}
