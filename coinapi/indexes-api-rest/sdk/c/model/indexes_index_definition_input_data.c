#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "indexes_index_definition_input_data.h"



static indexes_index_definition_input_data_t *indexes_index_definition_input_data_create_internal(
    char *exchange_id,
    char *exchange_symbol_id,
    char *base_asset_id,
    char *quote_asset_id,
    char *begin_date,
    char *end_date,
    char *status,
    char *status_info,
    char *last_modification_time
    ) {
    indexes_index_definition_input_data_t *indexes_index_definition_input_data_local_var = malloc(sizeof(indexes_index_definition_input_data_t));
    if (!indexes_index_definition_input_data_local_var) {
        return NULL;
    }
    indexes_index_definition_input_data_local_var->exchange_id = exchange_id;
    indexes_index_definition_input_data_local_var->exchange_symbol_id = exchange_symbol_id;
    indexes_index_definition_input_data_local_var->base_asset_id = base_asset_id;
    indexes_index_definition_input_data_local_var->quote_asset_id = quote_asset_id;
    indexes_index_definition_input_data_local_var->begin_date = begin_date;
    indexes_index_definition_input_data_local_var->end_date = end_date;
    indexes_index_definition_input_data_local_var->status = status;
    indexes_index_definition_input_data_local_var->status_info = status_info;
    indexes_index_definition_input_data_local_var->last_modification_time = last_modification_time;

    indexes_index_definition_input_data_local_var->_library_owned = 1;
    return indexes_index_definition_input_data_local_var;
}

__attribute__((deprecated)) indexes_index_definition_input_data_t *indexes_index_definition_input_data_create(
    char *exchange_id,
    char *exchange_symbol_id,
    char *base_asset_id,
    char *quote_asset_id,
    char *begin_date,
    char *end_date,
    char *status,
    char *status_info,
    char *last_modification_time
    ) {
    return indexes_index_definition_input_data_create_internal (
        exchange_id,
        exchange_symbol_id,
        base_asset_id,
        quote_asset_id,
        begin_date,
        end_date,
        status,
        status_info,
        last_modification_time
        );
}

void indexes_index_definition_input_data_free(indexes_index_definition_input_data_t *indexes_index_definition_input_data) {
    if(NULL == indexes_index_definition_input_data){
        return ;
    }
    if(indexes_index_definition_input_data->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "indexes_index_definition_input_data_free");
        return ;
    }
    listEntry_t *listEntry;
    if (indexes_index_definition_input_data->exchange_id) {
        free(indexes_index_definition_input_data->exchange_id);
        indexes_index_definition_input_data->exchange_id = NULL;
    }
    if (indexes_index_definition_input_data->exchange_symbol_id) {
        free(indexes_index_definition_input_data->exchange_symbol_id);
        indexes_index_definition_input_data->exchange_symbol_id = NULL;
    }
    if (indexes_index_definition_input_data->base_asset_id) {
        free(indexes_index_definition_input_data->base_asset_id);
        indexes_index_definition_input_data->base_asset_id = NULL;
    }
    if (indexes_index_definition_input_data->quote_asset_id) {
        free(indexes_index_definition_input_data->quote_asset_id);
        indexes_index_definition_input_data->quote_asset_id = NULL;
    }
    if (indexes_index_definition_input_data->begin_date) {
        free(indexes_index_definition_input_data->begin_date);
        indexes_index_definition_input_data->begin_date = NULL;
    }
    if (indexes_index_definition_input_data->end_date) {
        free(indexes_index_definition_input_data->end_date);
        indexes_index_definition_input_data->end_date = NULL;
    }
    if (indexes_index_definition_input_data->status) {
        free(indexes_index_definition_input_data->status);
        indexes_index_definition_input_data->status = NULL;
    }
    if (indexes_index_definition_input_data->status_info) {
        free(indexes_index_definition_input_data->status_info);
        indexes_index_definition_input_data->status_info = NULL;
    }
    if (indexes_index_definition_input_data->last_modification_time) {
        free(indexes_index_definition_input_data->last_modification_time);
        indexes_index_definition_input_data->last_modification_time = NULL;
    }
    free(indexes_index_definition_input_data);
}

cJSON *indexes_index_definition_input_data_convertToJSON(indexes_index_definition_input_data_t *indexes_index_definition_input_data) {
    cJSON *item = cJSON_CreateObject();

    // indexes_index_definition_input_data->exchange_id
    if(indexes_index_definition_input_data->exchange_id) {
    if(cJSON_AddStringToObject(item, "exchangeId", indexes_index_definition_input_data->exchange_id) == NULL) {
    goto fail; //String
    }
    }


    // indexes_index_definition_input_data->exchange_symbol_id
    if(indexes_index_definition_input_data->exchange_symbol_id) {
    if(cJSON_AddStringToObject(item, "exchangeSymbolId", indexes_index_definition_input_data->exchange_symbol_id) == NULL) {
    goto fail; //String
    }
    }


    // indexes_index_definition_input_data->base_asset_id
    if(indexes_index_definition_input_data->base_asset_id) {
    if(cJSON_AddStringToObject(item, "baseAssetId", indexes_index_definition_input_data->base_asset_id) == NULL) {
    goto fail; //String
    }
    }


    // indexes_index_definition_input_data->quote_asset_id
    if(indexes_index_definition_input_data->quote_asset_id) {
    if(cJSON_AddStringToObject(item, "quoteAssetId", indexes_index_definition_input_data->quote_asset_id) == NULL) {
    goto fail; //String
    }
    }


    // indexes_index_definition_input_data->begin_date
    if(indexes_index_definition_input_data->begin_date) {
    if(cJSON_AddStringToObject(item, "beginDate", indexes_index_definition_input_data->begin_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // indexes_index_definition_input_data->end_date
    if(indexes_index_definition_input_data->end_date) {
    if(cJSON_AddStringToObject(item, "endDate", indexes_index_definition_input_data->end_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // indexes_index_definition_input_data->status
    if(indexes_index_definition_input_data->status) {
    if(cJSON_AddStringToObject(item, "status", indexes_index_definition_input_data->status) == NULL) {
    goto fail; //String
    }
    }


    // indexes_index_definition_input_data->status_info
    if(indexes_index_definition_input_data->status_info) {
    if(cJSON_AddStringToObject(item, "statusInfo", indexes_index_definition_input_data->status_info) == NULL) {
    goto fail; //String
    }
    }


    // indexes_index_definition_input_data->last_modification_time
    if(indexes_index_definition_input_data->last_modification_time) {
    if(cJSON_AddStringToObject(item, "lastModificationTime", indexes_index_definition_input_data->last_modification_time) == NULL) {
    goto fail; //Date-Time
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

indexes_index_definition_input_data_t *indexes_index_definition_input_data_parseFromJSON(cJSON *indexes_index_definition_input_dataJSON){

    indexes_index_definition_input_data_t *indexes_index_definition_input_data_local_var = NULL;

    // indexes_index_definition_input_data->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(indexes_index_definition_input_dataJSON, "exchangeId");
    if (cJSON_IsNull(exchange_id)) {
        exchange_id = NULL;
    }
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id) && !cJSON_IsNull(exchange_id))
    {
    goto end; //String
    }
    }

    // indexes_index_definition_input_data->exchange_symbol_id
    cJSON *exchange_symbol_id = cJSON_GetObjectItemCaseSensitive(indexes_index_definition_input_dataJSON, "exchangeSymbolId");
    if (cJSON_IsNull(exchange_symbol_id)) {
        exchange_symbol_id = NULL;
    }
    if (exchange_symbol_id) { 
    if(!cJSON_IsString(exchange_symbol_id) && !cJSON_IsNull(exchange_symbol_id))
    {
    goto end; //String
    }
    }

    // indexes_index_definition_input_data->base_asset_id
    cJSON *base_asset_id = cJSON_GetObjectItemCaseSensitive(indexes_index_definition_input_dataJSON, "baseAssetId");
    if (cJSON_IsNull(base_asset_id)) {
        base_asset_id = NULL;
    }
    if (base_asset_id) { 
    if(!cJSON_IsString(base_asset_id) && !cJSON_IsNull(base_asset_id))
    {
    goto end; //String
    }
    }

    // indexes_index_definition_input_data->quote_asset_id
    cJSON *quote_asset_id = cJSON_GetObjectItemCaseSensitive(indexes_index_definition_input_dataJSON, "quoteAssetId");
    if (cJSON_IsNull(quote_asset_id)) {
        quote_asset_id = NULL;
    }
    if (quote_asset_id) { 
    if(!cJSON_IsString(quote_asset_id) && !cJSON_IsNull(quote_asset_id))
    {
    goto end; //String
    }
    }

    // indexes_index_definition_input_data->begin_date
    cJSON *begin_date = cJSON_GetObjectItemCaseSensitive(indexes_index_definition_input_dataJSON, "beginDate");
    if (cJSON_IsNull(begin_date)) {
        begin_date = NULL;
    }
    if (begin_date) { 
    if(!cJSON_IsString(begin_date) && !cJSON_IsNull(begin_date))
    {
    goto end; //DateTime
    }
    }

    // indexes_index_definition_input_data->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(indexes_index_definition_input_dataJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsString(end_date) && !cJSON_IsNull(end_date))
    {
    goto end; //DateTime
    }
    }

    // indexes_index_definition_input_data->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(indexes_index_definition_input_dataJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    if (status) { 
    if(!cJSON_IsString(status) && !cJSON_IsNull(status))
    {
    goto end; //String
    }
    }

    // indexes_index_definition_input_data->status_info
    cJSON *status_info = cJSON_GetObjectItemCaseSensitive(indexes_index_definition_input_dataJSON, "statusInfo");
    if (cJSON_IsNull(status_info)) {
        status_info = NULL;
    }
    if (status_info) { 
    if(!cJSON_IsString(status_info) && !cJSON_IsNull(status_info))
    {
    goto end; //String
    }
    }

    // indexes_index_definition_input_data->last_modification_time
    cJSON *last_modification_time = cJSON_GetObjectItemCaseSensitive(indexes_index_definition_input_dataJSON, "lastModificationTime");
    if (cJSON_IsNull(last_modification_time)) {
        last_modification_time = NULL;
    }
    if (last_modification_time) { 
    if(!cJSON_IsString(last_modification_time) && !cJSON_IsNull(last_modification_time))
    {
    goto end; //DateTime
    }
    }


    indexes_index_definition_input_data_local_var = indexes_index_definition_input_data_create_internal (
        exchange_id && !cJSON_IsNull(exchange_id) ? strdup(exchange_id->valuestring) : NULL,
        exchange_symbol_id && !cJSON_IsNull(exchange_symbol_id) ? strdup(exchange_symbol_id->valuestring) : NULL,
        base_asset_id && !cJSON_IsNull(base_asset_id) ? strdup(base_asset_id->valuestring) : NULL,
        quote_asset_id && !cJSON_IsNull(quote_asset_id) ? strdup(quote_asset_id->valuestring) : NULL,
        begin_date && !cJSON_IsNull(begin_date) ? strdup(begin_date->valuestring) : NULL,
        end_date && !cJSON_IsNull(end_date) ? strdup(end_date->valuestring) : NULL,
        status && !cJSON_IsNull(status) ? strdup(status->valuestring) : NULL,
        status_info && !cJSON_IsNull(status_info) ? strdup(status_info->valuestring) : NULL,
        last_modification_time && !cJSON_IsNull(last_modification_time) ? strdup(last_modification_time->valuestring) : NULL
        );

    return indexes_index_definition_input_data_local_var;
end:
    return NULL;

}
