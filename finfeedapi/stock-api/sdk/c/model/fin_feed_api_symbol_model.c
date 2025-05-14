#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "fin_feed_api_symbol_model.h"



static fin_feed_api_symbol_model_t *fin_feed_api_symbol_model_create_internal(
    char *symbol_id,
    char *exchange_id,
    char *security_category,
    char *name,
    char *date,
    char *asset_class
    ) {
    fin_feed_api_symbol_model_t *fin_feed_api_symbol_model_local_var = malloc(sizeof(fin_feed_api_symbol_model_t));
    if (!fin_feed_api_symbol_model_local_var) {
        return NULL;
    }
    fin_feed_api_symbol_model_local_var->symbol_id = symbol_id;
    fin_feed_api_symbol_model_local_var->exchange_id = exchange_id;
    fin_feed_api_symbol_model_local_var->security_category = security_category;
    fin_feed_api_symbol_model_local_var->name = name;
    fin_feed_api_symbol_model_local_var->date = date;
    fin_feed_api_symbol_model_local_var->asset_class = asset_class;

    fin_feed_api_symbol_model_local_var->_library_owned = 1;
    return fin_feed_api_symbol_model_local_var;
}

__attribute__((deprecated)) fin_feed_api_symbol_model_t *fin_feed_api_symbol_model_create(
    char *symbol_id,
    char *exchange_id,
    char *security_category,
    char *name,
    char *date,
    char *asset_class
    ) {
    return fin_feed_api_symbol_model_create_internal (
        symbol_id,
        exchange_id,
        security_category,
        name,
        date,
        asset_class
        );
}

void fin_feed_api_symbol_model_free(fin_feed_api_symbol_model_t *fin_feed_api_symbol_model) {
    if(NULL == fin_feed_api_symbol_model){
        return ;
    }
    if(fin_feed_api_symbol_model->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "fin_feed_api_symbol_model_free");
        return ;
    }
    listEntry_t *listEntry;
    if (fin_feed_api_symbol_model->symbol_id) {
        free(fin_feed_api_symbol_model->symbol_id);
        fin_feed_api_symbol_model->symbol_id = NULL;
    }
    if (fin_feed_api_symbol_model->exchange_id) {
        free(fin_feed_api_symbol_model->exchange_id);
        fin_feed_api_symbol_model->exchange_id = NULL;
    }
    if (fin_feed_api_symbol_model->security_category) {
        free(fin_feed_api_symbol_model->security_category);
        fin_feed_api_symbol_model->security_category = NULL;
    }
    if (fin_feed_api_symbol_model->name) {
        free(fin_feed_api_symbol_model->name);
        fin_feed_api_symbol_model->name = NULL;
    }
    if (fin_feed_api_symbol_model->date) {
        free(fin_feed_api_symbol_model->date);
        fin_feed_api_symbol_model->date = NULL;
    }
    if (fin_feed_api_symbol_model->asset_class) {
        free(fin_feed_api_symbol_model->asset_class);
        fin_feed_api_symbol_model->asset_class = NULL;
    }
    free(fin_feed_api_symbol_model);
}

cJSON *fin_feed_api_symbol_model_convertToJSON(fin_feed_api_symbol_model_t *fin_feed_api_symbol_model) {
    cJSON *item = cJSON_CreateObject();

    // fin_feed_api_symbol_model->symbol_id
    if(fin_feed_api_symbol_model->symbol_id) {
    if(cJSON_AddStringToObject(item, "symbol_id", fin_feed_api_symbol_model->symbol_id) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_symbol_model->exchange_id
    if(fin_feed_api_symbol_model->exchange_id) {
    if(cJSON_AddStringToObject(item, "exchange_id", fin_feed_api_symbol_model->exchange_id) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_symbol_model->security_category
    if(fin_feed_api_symbol_model->security_category) {
    if(cJSON_AddStringToObject(item, "security_category", fin_feed_api_symbol_model->security_category) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_symbol_model->name
    if(fin_feed_api_symbol_model->name) {
    if(cJSON_AddStringToObject(item, "name", fin_feed_api_symbol_model->name) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_symbol_model->date
    if(fin_feed_api_symbol_model->date) {
    if(cJSON_AddStringToObject(item, "date", fin_feed_api_symbol_model->date) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_symbol_model->asset_class
    if(fin_feed_api_symbol_model->asset_class) {
    if(cJSON_AddStringToObject(item, "asset_class", fin_feed_api_symbol_model->asset_class) == NULL) {
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

fin_feed_api_symbol_model_t *fin_feed_api_symbol_model_parseFromJSON(cJSON *fin_feed_api_symbol_modelJSON){

    fin_feed_api_symbol_model_t *fin_feed_api_symbol_model_local_var = NULL;

    // fin_feed_api_symbol_model->symbol_id
    cJSON *symbol_id = cJSON_GetObjectItemCaseSensitive(fin_feed_api_symbol_modelJSON, "symbol_id");
    if (cJSON_IsNull(symbol_id)) {
        symbol_id = NULL;
    }
    if (symbol_id) { 
    if(!cJSON_IsString(symbol_id) && !cJSON_IsNull(symbol_id))
    {
    goto end; //String
    }
    }

    // fin_feed_api_symbol_model->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(fin_feed_api_symbol_modelJSON, "exchange_id");
    if (cJSON_IsNull(exchange_id)) {
        exchange_id = NULL;
    }
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id) && !cJSON_IsNull(exchange_id))
    {
    goto end; //String
    }
    }

    // fin_feed_api_symbol_model->security_category
    cJSON *security_category = cJSON_GetObjectItemCaseSensitive(fin_feed_api_symbol_modelJSON, "security_category");
    if (cJSON_IsNull(security_category)) {
        security_category = NULL;
    }
    if (security_category) { 
    if(!cJSON_IsString(security_category) && !cJSON_IsNull(security_category))
    {
    goto end; //String
    }
    }

    // fin_feed_api_symbol_model->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(fin_feed_api_symbol_modelJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // fin_feed_api_symbol_model->date
    cJSON *date = cJSON_GetObjectItemCaseSensitive(fin_feed_api_symbol_modelJSON, "date");
    if (cJSON_IsNull(date)) {
        date = NULL;
    }
    if (date) { 
    if(!cJSON_IsString(date) && !cJSON_IsNull(date))
    {
    goto end; //String
    }
    }

    // fin_feed_api_symbol_model->asset_class
    cJSON *asset_class = cJSON_GetObjectItemCaseSensitive(fin_feed_api_symbol_modelJSON, "asset_class");
    if (cJSON_IsNull(asset_class)) {
        asset_class = NULL;
    }
    if (asset_class) { 
    if(!cJSON_IsString(asset_class) && !cJSON_IsNull(asset_class))
    {
    goto end; //String
    }
    }


    fin_feed_api_symbol_model_local_var = fin_feed_api_symbol_model_create_internal (
        symbol_id && !cJSON_IsNull(symbol_id) ? strdup(symbol_id->valuestring) : NULL,
        exchange_id && !cJSON_IsNull(exchange_id) ? strdup(exchange_id->valuestring) : NULL,
        security_category && !cJSON_IsNull(security_category) ? strdup(security_category->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        date && !cJSON_IsNull(date) ? strdup(date->valuestring) : NULL,
        asset_class && !cJSON_IsNull(asset_class) ? strdup(asset_class->valuestring) : NULL
        );

    return fin_feed_api_symbol_model_local_var;
end:
    return NULL;

}
