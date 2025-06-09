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
    char *asset_class,
    char *cfi_code,
    char *cfi_category,
    char *cfi_group,
    char *cfi_attribute1,
    char *cfi_attribute2,
    char *cfi_attribute3,
    char *cfi_attribute4,
    char *cfi_category_desc,
    char *cfi_group_desc
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
    fin_feed_api_symbol_model_local_var->cfi_code = cfi_code;
    fin_feed_api_symbol_model_local_var->cfi_category = cfi_category;
    fin_feed_api_symbol_model_local_var->cfi_group = cfi_group;
    fin_feed_api_symbol_model_local_var->cfi_attribute1 = cfi_attribute1;
    fin_feed_api_symbol_model_local_var->cfi_attribute2 = cfi_attribute2;
    fin_feed_api_symbol_model_local_var->cfi_attribute3 = cfi_attribute3;
    fin_feed_api_symbol_model_local_var->cfi_attribute4 = cfi_attribute4;
    fin_feed_api_symbol_model_local_var->cfi_category_desc = cfi_category_desc;
    fin_feed_api_symbol_model_local_var->cfi_group_desc = cfi_group_desc;

    fin_feed_api_symbol_model_local_var->_library_owned = 1;
    return fin_feed_api_symbol_model_local_var;
}

__attribute__((deprecated)) fin_feed_api_symbol_model_t *fin_feed_api_symbol_model_create(
    char *symbol_id,
    char *exchange_id,
    char *security_category,
    char *name,
    char *date,
    char *asset_class,
    char *cfi_code,
    char *cfi_category,
    char *cfi_group,
    char *cfi_attribute1,
    char *cfi_attribute2,
    char *cfi_attribute3,
    char *cfi_attribute4,
    char *cfi_category_desc,
    char *cfi_group_desc
    ) {
    return fin_feed_api_symbol_model_create_internal (
        symbol_id,
        exchange_id,
        security_category,
        name,
        date,
        asset_class,
        cfi_code,
        cfi_category,
        cfi_group,
        cfi_attribute1,
        cfi_attribute2,
        cfi_attribute3,
        cfi_attribute4,
        cfi_category_desc,
        cfi_group_desc
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
    if (fin_feed_api_symbol_model->cfi_code) {
        free(fin_feed_api_symbol_model->cfi_code);
        fin_feed_api_symbol_model->cfi_code = NULL;
    }
    if (fin_feed_api_symbol_model->cfi_category) {
        free(fin_feed_api_symbol_model->cfi_category);
        fin_feed_api_symbol_model->cfi_category = NULL;
    }
    if (fin_feed_api_symbol_model->cfi_group) {
        free(fin_feed_api_symbol_model->cfi_group);
        fin_feed_api_symbol_model->cfi_group = NULL;
    }
    if (fin_feed_api_symbol_model->cfi_attribute1) {
        free(fin_feed_api_symbol_model->cfi_attribute1);
        fin_feed_api_symbol_model->cfi_attribute1 = NULL;
    }
    if (fin_feed_api_symbol_model->cfi_attribute2) {
        free(fin_feed_api_symbol_model->cfi_attribute2);
        fin_feed_api_symbol_model->cfi_attribute2 = NULL;
    }
    if (fin_feed_api_symbol_model->cfi_attribute3) {
        free(fin_feed_api_symbol_model->cfi_attribute3);
        fin_feed_api_symbol_model->cfi_attribute3 = NULL;
    }
    if (fin_feed_api_symbol_model->cfi_attribute4) {
        free(fin_feed_api_symbol_model->cfi_attribute4);
        fin_feed_api_symbol_model->cfi_attribute4 = NULL;
    }
    if (fin_feed_api_symbol_model->cfi_category_desc) {
        free(fin_feed_api_symbol_model->cfi_category_desc);
        fin_feed_api_symbol_model->cfi_category_desc = NULL;
    }
    if (fin_feed_api_symbol_model->cfi_group_desc) {
        free(fin_feed_api_symbol_model->cfi_group_desc);
        fin_feed_api_symbol_model->cfi_group_desc = NULL;
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


    // fin_feed_api_symbol_model->cfi_code
    if(fin_feed_api_symbol_model->cfi_code) {
    if(cJSON_AddStringToObject(item, "cfi_code", fin_feed_api_symbol_model->cfi_code) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_symbol_model->cfi_category
    if(fin_feed_api_symbol_model->cfi_category) {
    if(cJSON_AddStringToObject(item, "cfi_category", fin_feed_api_symbol_model->cfi_category) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_symbol_model->cfi_group
    if(fin_feed_api_symbol_model->cfi_group) {
    if(cJSON_AddStringToObject(item, "cfi_group", fin_feed_api_symbol_model->cfi_group) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_symbol_model->cfi_attribute1
    if(fin_feed_api_symbol_model->cfi_attribute1) {
    if(cJSON_AddStringToObject(item, "cfi_attribute1", fin_feed_api_symbol_model->cfi_attribute1) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_symbol_model->cfi_attribute2
    if(fin_feed_api_symbol_model->cfi_attribute2) {
    if(cJSON_AddStringToObject(item, "cfi_attribute2", fin_feed_api_symbol_model->cfi_attribute2) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_symbol_model->cfi_attribute3
    if(fin_feed_api_symbol_model->cfi_attribute3) {
    if(cJSON_AddStringToObject(item, "cfi_attribute3", fin_feed_api_symbol_model->cfi_attribute3) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_symbol_model->cfi_attribute4
    if(fin_feed_api_symbol_model->cfi_attribute4) {
    if(cJSON_AddStringToObject(item, "cfi_attribute4", fin_feed_api_symbol_model->cfi_attribute4) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_symbol_model->cfi_category_desc
    if(fin_feed_api_symbol_model->cfi_category_desc) {
    if(cJSON_AddStringToObject(item, "cfi_category_desc", fin_feed_api_symbol_model->cfi_category_desc) == NULL) {
    goto fail; //String
    }
    }


    // fin_feed_api_symbol_model->cfi_group_desc
    if(fin_feed_api_symbol_model->cfi_group_desc) {
    if(cJSON_AddStringToObject(item, "cfi_group_desc", fin_feed_api_symbol_model->cfi_group_desc) == NULL) {
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

    // fin_feed_api_symbol_model->cfi_code
    cJSON *cfi_code = cJSON_GetObjectItemCaseSensitive(fin_feed_api_symbol_modelJSON, "cfi_code");
    if (cJSON_IsNull(cfi_code)) {
        cfi_code = NULL;
    }
    if (cfi_code) { 
    if(!cJSON_IsString(cfi_code) && !cJSON_IsNull(cfi_code))
    {
    goto end; //String
    }
    }

    // fin_feed_api_symbol_model->cfi_category
    cJSON *cfi_category = cJSON_GetObjectItemCaseSensitive(fin_feed_api_symbol_modelJSON, "cfi_category");
    if (cJSON_IsNull(cfi_category)) {
        cfi_category = NULL;
    }
    if (cfi_category) { 
    if(!cJSON_IsString(cfi_category) && !cJSON_IsNull(cfi_category))
    {
    goto end; //String
    }
    }

    // fin_feed_api_symbol_model->cfi_group
    cJSON *cfi_group = cJSON_GetObjectItemCaseSensitive(fin_feed_api_symbol_modelJSON, "cfi_group");
    if (cJSON_IsNull(cfi_group)) {
        cfi_group = NULL;
    }
    if (cfi_group) { 
    if(!cJSON_IsString(cfi_group) && !cJSON_IsNull(cfi_group))
    {
    goto end; //String
    }
    }

    // fin_feed_api_symbol_model->cfi_attribute1
    cJSON *cfi_attribute1 = cJSON_GetObjectItemCaseSensitive(fin_feed_api_symbol_modelJSON, "cfi_attribute1");
    if (cJSON_IsNull(cfi_attribute1)) {
        cfi_attribute1 = NULL;
    }
    if (cfi_attribute1) { 
    if(!cJSON_IsString(cfi_attribute1) && !cJSON_IsNull(cfi_attribute1))
    {
    goto end; //String
    }
    }

    // fin_feed_api_symbol_model->cfi_attribute2
    cJSON *cfi_attribute2 = cJSON_GetObjectItemCaseSensitive(fin_feed_api_symbol_modelJSON, "cfi_attribute2");
    if (cJSON_IsNull(cfi_attribute2)) {
        cfi_attribute2 = NULL;
    }
    if (cfi_attribute2) { 
    if(!cJSON_IsString(cfi_attribute2) && !cJSON_IsNull(cfi_attribute2))
    {
    goto end; //String
    }
    }

    // fin_feed_api_symbol_model->cfi_attribute3
    cJSON *cfi_attribute3 = cJSON_GetObjectItemCaseSensitive(fin_feed_api_symbol_modelJSON, "cfi_attribute3");
    if (cJSON_IsNull(cfi_attribute3)) {
        cfi_attribute3 = NULL;
    }
    if (cfi_attribute3) { 
    if(!cJSON_IsString(cfi_attribute3) && !cJSON_IsNull(cfi_attribute3))
    {
    goto end; //String
    }
    }

    // fin_feed_api_symbol_model->cfi_attribute4
    cJSON *cfi_attribute4 = cJSON_GetObjectItemCaseSensitive(fin_feed_api_symbol_modelJSON, "cfi_attribute4");
    if (cJSON_IsNull(cfi_attribute4)) {
        cfi_attribute4 = NULL;
    }
    if (cfi_attribute4) { 
    if(!cJSON_IsString(cfi_attribute4) && !cJSON_IsNull(cfi_attribute4))
    {
    goto end; //String
    }
    }

    // fin_feed_api_symbol_model->cfi_category_desc
    cJSON *cfi_category_desc = cJSON_GetObjectItemCaseSensitive(fin_feed_api_symbol_modelJSON, "cfi_category_desc");
    if (cJSON_IsNull(cfi_category_desc)) {
        cfi_category_desc = NULL;
    }
    if (cfi_category_desc) { 
    if(!cJSON_IsString(cfi_category_desc) && !cJSON_IsNull(cfi_category_desc))
    {
    goto end; //String
    }
    }

    // fin_feed_api_symbol_model->cfi_group_desc
    cJSON *cfi_group_desc = cJSON_GetObjectItemCaseSensitive(fin_feed_api_symbol_modelJSON, "cfi_group_desc");
    if (cJSON_IsNull(cfi_group_desc)) {
        cfi_group_desc = NULL;
    }
    if (cfi_group_desc) { 
    if(!cJSON_IsString(cfi_group_desc) && !cJSON_IsNull(cfi_group_desc))
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
        asset_class && !cJSON_IsNull(asset_class) ? strdup(asset_class->valuestring) : NULL,
        cfi_code && !cJSON_IsNull(cfi_code) ? strdup(cfi_code->valuestring) : NULL,
        cfi_category && !cJSON_IsNull(cfi_category) ? strdup(cfi_category->valuestring) : NULL,
        cfi_group && !cJSON_IsNull(cfi_group) ? strdup(cfi_group->valuestring) : NULL,
        cfi_attribute1 && !cJSON_IsNull(cfi_attribute1) ? strdup(cfi_attribute1->valuestring) : NULL,
        cfi_attribute2 && !cJSON_IsNull(cfi_attribute2) ? strdup(cfi_attribute2->valuestring) : NULL,
        cfi_attribute3 && !cJSON_IsNull(cfi_attribute3) ? strdup(cfi_attribute3->valuestring) : NULL,
        cfi_attribute4 && !cJSON_IsNull(cfi_attribute4) ? strdup(cfi_attribute4->valuestring) : NULL,
        cfi_category_desc && !cJSON_IsNull(cfi_category_desc) ? strdup(cfi_category_desc->valuestring) : NULL,
        cfi_group_desc && !cJSON_IsNull(cfi_group_desc) ? strdup(cfi_group_desc->valuestring) : NULL
        );

    return fin_feed_api_symbol_model_local_var;
end:
    return NULL;

}
