#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "admin_security_directory_model.h"



static admin_security_directory_model_t *admin_security_directory_model_create_internal(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int flags,
    int round_lot_size,
    double adjusted_poc_price,
    int luld_tier,
    char *luld_tier_code,
    char *luld_tier_text,
    int is_luld_tier_not_applicable,
    int is_luld_tier1,
    int is_luld_tier2
    ) {
    admin_security_directory_model_t *admin_security_directory_model_local_var = malloc(sizeof(admin_security_directory_model_t));
    if (!admin_security_directory_model_local_var) {
        return NULL;
    }
    admin_security_directory_model_local_var->symbol = symbol;
    admin_security_directory_model_local_var->timestamp_nanos = timestamp_nanos;
    admin_security_directory_model_local_var->timestamp = timestamp;
    admin_security_directory_model_local_var->flags = flags;
    admin_security_directory_model_local_var->round_lot_size = round_lot_size;
    admin_security_directory_model_local_var->adjusted_poc_price = adjusted_poc_price;
    admin_security_directory_model_local_var->luld_tier = luld_tier;
    admin_security_directory_model_local_var->luld_tier_code = luld_tier_code;
    admin_security_directory_model_local_var->luld_tier_text = luld_tier_text;
    admin_security_directory_model_local_var->is_luld_tier_not_applicable = is_luld_tier_not_applicable;
    admin_security_directory_model_local_var->is_luld_tier1 = is_luld_tier1;
    admin_security_directory_model_local_var->is_luld_tier2 = is_luld_tier2;

    admin_security_directory_model_local_var->_library_owned = 1;
    return admin_security_directory_model_local_var;
}

__attribute__((deprecated)) admin_security_directory_model_t *admin_security_directory_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int flags,
    int round_lot_size,
    double adjusted_poc_price,
    int luld_tier,
    char *luld_tier_code,
    char *luld_tier_text,
    int is_luld_tier_not_applicable,
    int is_luld_tier1,
    int is_luld_tier2
    ) {
    return admin_security_directory_model_create_internal (
        symbol,
        timestamp_nanos,
        timestamp,
        flags,
        round_lot_size,
        adjusted_poc_price,
        luld_tier,
        luld_tier_code,
        luld_tier_text,
        is_luld_tier_not_applicable,
        is_luld_tier1,
        is_luld_tier2
        );
}

void admin_security_directory_model_free(admin_security_directory_model_t *admin_security_directory_model) {
    if(NULL == admin_security_directory_model){
        return ;
    }
    if(admin_security_directory_model->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "admin_security_directory_model_free");
        return ;
    }
    listEntry_t *listEntry;
    if (admin_security_directory_model->symbol) {
        free(admin_security_directory_model->symbol);
        admin_security_directory_model->symbol = NULL;
    }
    if (admin_security_directory_model->timestamp) {
        free(admin_security_directory_model->timestamp);
        admin_security_directory_model->timestamp = NULL;
    }
    if (admin_security_directory_model->luld_tier_code) {
        free(admin_security_directory_model->luld_tier_code);
        admin_security_directory_model->luld_tier_code = NULL;
    }
    if (admin_security_directory_model->luld_tier_text) {
        free(admin_security_directory_model->luld_tier_text);
        admin_security_directory_model->luld_tier_text = NULL;
    }
    free(admin_security_directory_model);
}

cJSON *admin_security_directory_model_convertToJSON(admin_security_directory_model_t *admin_security_directory_model) {
    cJSON *item = cJSON_CreateObject();

    // admin_security_directory_model->symbol
    if(admin_security_directory_model->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", admin_security_directory_model->symbol) == NULL) {
    goto fail; //String
    }
    }


    // admin_security_directory_model->timestamp_nanos
    if(admin_security_directory_model->timestamp_nanos) {
    if(cJSON_AddNumberToObject(item, "timestamp_nanos", admin_security_directory_model->timestamp_nanos) == NULL) {
    goto fail; //Numeric
    }
    }


    // admin_security_directory_model->timestamp
    if(admin_security_directory_model->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", admin_security_directory_model->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // admin_security_directory_model->flags
    if(admin_security_directory_model->flags) {
    if(cJSON_AddNumberToObject(item, "flags", admin_security_directory_model->flags) == NULL) {
    goto fail; //Numeric
    }
    }


    // admin_security_directory_model->round_lot_size
    if(admin_security_directory_model->round_lot_size) {
    if(cJSON_AddNumberToObject(item, "round_lot_size", admin_security_directory_model->round_lot_size) == NULL) {
    goto fail; //Numeric
    }
    }


    // admin_security_directory_model->adjusted_poc_price
    if(admin_security_directory_model->adjusted_poc_price) {
    if(cJSON_AddNumberToObject(item, "adjusted_poc_price", admin_security_directory_model->adjusted_poc_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // admin_security_directory_model->luld_tier
    if(admin_security_directory_model->luld_tier) {
    if(cJSON_AddNumberToObject(item, "luld_tier", admin_security_directory_model->luld_tier) == NULL) {
    goto fail; //Numeric
    }
    }


    // admin_security_directory_model->luld_tier_code
    if(admin_security_directory_model->luld_tier_code) {
    if(cJSON_AddStringToObject(item, "luld_tier_code", admin_security_directory_model->luld_tier_code) == NULL) {
    goto fail; //String
    }
    }


    // admin_security_directory_model->luld_tier_text
    if(admin_security_directory_model->luld_tier_text) {
    if(cJSON_AddStringToObject(item, "luld_tier_text", admin_security_directory_model->luld_tier_text) == NULL) {
    goto fail; //String
    }
    }


    // admin_security_directory_model->is_luld_tier_not_applicable
    if(admin_security_directory_model->is_luld_tier_not_applicable) {
    if(cJSON_AddBoolToObject(item, "is_luld_tier_not_applicable", admin_security_directory_model->is_luld_tier_not_applicable) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_security_directory_model->is_luld_tier1
    if(admin_security_directory_model->is_luld_tier1) {
    if(cJSON_AddBoolToObject(item, "is_luld_tier1", admin_security_directory_model->is_luld_tier1) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_security_directory_model->is_luld_tier2
    if(admin_security_directory_model->is_luld_tier2) {
    if(cJSON_AddBoolToObject(item, "is_luld_tier2", admin_security_directory_model->is_luld_tier2) == NULL) {
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

admin_security_directory_model_t *admin_security_directory_model_parseFromJSON(cJSON *admin_security_directory_modelJSON){

    admin_security_directory_model_t *admin_security_directory_model_local_var = NULL;

    // admin_security_directory_model->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(admin_security_directory_modelJSON, "symbol");
    if (cJSON_IsNull(symbol)) {
        symbol = NULL;
    }
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // admin_security_directory_model->timestamp_nanos
    cJSON *timestamp_nanos = cJSON_GetObjectItemCaseSensitive(admin_security_directory_modelJSON, "timestamp_nanos");
    if (cJSON_IsNull(timestamp_nanos)) {
        timestamp_nanos = NULL;
    }
    if (timestamp_nanos) { 
    if(!cJSON_IsNumber(timestamp_nanos))
    {
    goto end; //Numeric
    }
    }

    // admin_security_directory_model->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(admin_security_directory_modelJSON, "timestamp");
    if (cJSON_IsNull(timestamp)) {
        timestamp = NULL;
    }
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //DateTime
    }
    }

    // admin_security_directory_model->flags
    cJSON *flags = cJSON_GetObjectItemCaseSensitive(admin_security_directory_modelJSON, "flags");
    if (cJSON_IsNull(flags)) {
        flags = NULL;
    }
    if (flags) { 
    if(!cJSON_IsNumber(flags))
    {
    goto end; //Numeric
    }
    }

    // admin_security_directory_model->round_lot_size
    cJSON *round_lot_size = cJSON_GetObjectItemCaseSensitive(admin_security_directory_modelJSON, "round_lot_size");
    if (cJSON_IsNull(round_lot_size)) {
        round_lot_size = NULL;
    }
    if (round_lot_size) { 
    if(!cJSON_IsNumber(round_lot_size))
    {
    goto end; //Numeric
    }
    }

    // admin_security_directory_model->adjusted_poc_price
    cJSON *adjusted_poc_price = cJSON_GetObjectItemCaseSensitive(admin_security_directory_modelJSON, "adjusted_poc_price");
    if (cJSON_IsNull(adjusted_poc_price)) {
        adjusted_poc_price = NULL;
    }
    if (adjusted_poc_price) { 
    if(!cJSON_IsNumber(adjusted_poc_price))
    {
    goto end; //Numeric
    }
    }

    // admin_security_directory_model->luld_tier
    cJSON *luld_tier = cJSON_GetObjectItemCaseSensitive(admin_security_directory_modelJSON, "luld_tier");
    if (cJSON_IsNull(luld_tier)) {
        luld_tier = NULL;
    }
    if (luld_tier) { 
    if(!cJSON_IsNumber(luld_tier))
    {
    goto end; //Numeric
    }
    }

    // admin_security_directory_model->luld_tier_code
    cJSON *luld_tier_code = cJSON_GetObjectItemCaseSensitive(admin_security_directory_modelJSON, "luld_tier_code");
    if (cJSON_IsNull(luld_tier_code)) {
        luld_tier_code = NULL;
    }
    if (luld_tier_code) { 
    if(!cJSON_IsString(luld_tier_code) && !cJSON_IsNull(luld_tier_code))
    {
    goto end; //String
    }
    }

    // admin_security_directory_model->luld_tier_text
    cJSON *luld_tier_text = cJSON_GetObjectItemCaseSensitive(admin_security_directory_modelJSON, "luld_tier_text");
    if (cJSON_IsNull(luld_tier_text)) {
        luld_tier_text = NULL;
    }
    if (luld_tier_text) { 
    if(!cJSON_IsString(luld_tier_text) && !cJSON_IsNull(luld_tier_text))
    {
    goto end; //String
    }
    }

    // admin_security_directory_model->is_luld_tier_not_applicable
    cJSON *is_luld_tier_not_applicable = cJSON_GetObjectItemCaseSensitive(admin_security_directory_modelJSON, "is_luld_tier_not_applicable");
    if (cJSON_IsNull(is_luld_tier_not_applicable)) {
        is_luld_tier_not_applicable = NULL;
    }
    if (is_luld_tier_not_applicable) { 
    if(!cJSON_IsBool(is_luld_tier_not_applicable))
    {
    goto end; //Bool
    }
    }

    // admin_security_directory_model->is_luld_tier1
    cJSON *is_luld_tier1 = cJSON_GetObjectItemCaseSensitive(admin_security_directory_modelJSON, "is_luld_tier1");
    if (cJSON_IsNull(is_luld_tier1)) {
        is_luld_tier1 = NULL;
    }
    if (is_luld_tier1) { 
    if(!cJSON_IsBool(is_luld_tier1))
    {
    goto end; //Bool
    }
    }

    // admin_security_directory_model->is_luld_tier2
    cJSON *is_luld_tier2 = cJSON_GetObjectItemCaseSensitive(admin_security_directory_modelJSON, "is_luld_tier2");
    if (cJSON_IsNull(is_luld_tier2)) {
        is_luld_tier2 = NULL;
    }
    if (is_luld_tier2) { 
    if(!cJSON_IsBool(is_luld_tier2))
    {
    goto end; //Bool
    }
    }


    admin_security_directory_model_local_var = admin_security_directory_model_create_internal (
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        timestamp_nanos ? timestamp_nanos->valuedouble : 0,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        flags ? flags->valuedouble : 0,
        round_lot_size ? round_lot_size->valuedouble : 0,
        adjusted_poc_price ? adjusted_poc_price->valuedouble : 0,
        luld_tier ? luld_tier->valuedouble : 0,
        luld_tier_code && !cJSON_IsNull(luld_tier_code) ? strdup(luld_tier_code->valuestring) : NULL,
        luld_tier_text && !cJSON_IsNull(luld_tier_text) ? strdup(luld_tier_text->valuestring) : NULL,
        is_luld_tier_not_applicable ? is_luld_tier_not_applicable->valueint : 0,
        is_luld_tier1 ? is_luld_tier1->valueint : 0,
        is_luld_tier2 ? is_luld_tier2->valueint : 0
        );

    return admin_security_directory_model_local_var;
end:
    return NULL;

}
