#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "admin_trading_status_model.h"



static admin_trading_status_model_t *admin_trading_status_model_create_internal(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int is_trading_live,
    int is_trading_halted,
    int is_trading_in_order_acceptance_period,
    int is_trading_paused,
    int is_reason_halt_news_pending,
    int is_reason_ipo_not_yet_trading,
    int is_reason_ipo_deferred,
    int is_reason_halt_news_dissemination,
    int is_reason_ipo_order_acceptance_period,
    int is_reason_ipo_pre_launch_period,
    int is_reason_market_wide_circuit_breaker_level1,
    int is_reason_market_wide_circuit_breaker_level2,
    int is_reason_market_wide_circuit_breaker_level3,
    int is_reason_not_applicable,
    int is_reason_not_available
    ) {
    admin_trading_status_model_t *admin_trading_status_model_local_var = malloc(sizeof(admin_trading_status_model_t));
    if (!admin_trading_status_model_local_var) {
        return NULL;
    }
    admin_trading_status_model_local_var->symbol = symbol;
    admin_trading_status_model_local_var->timestamp_nanos = timestamp_nanos;
    admin_trading_status_model_local_var->timestamp = timestamp;
    admin_trading_status_model_local_var->is_trading_live = is_trading_live;
    admin_trading_status_model_local_var->is_trading_halted = is_trading_halted;
    admin_trading_status_model_local_var->is_trading_in_order_acceptance_period = is_trading_in_order_acceptance_period;
    admin_trading_status_model_local_var->is_trading_paused = is_trading_paused;
    admin_trading_status_model_local_var->is_reason_halt_news_pending = is_reason_halt_news_pending;
    admin_trading_status_model_local_var->is_reason_ipo_not_yet_trading = is_reason_ipo_not_yet_trading;
    admin_trading_status_model_local_var->is_reason_ipo_deferred = is_reason_ipo_deferred;
    admin_trading_status_model_local_var->is_reason_halt_news_dissemination = is_reason_halt_news_dissemination;
    admin_trading_status_model_local_var->is_reason_ipo_order_acceptance_period = is_reason_ipo_order_acceptance_period;
    admin_trading_status_model_local_var->is_reason_ipo_pre_launch_period = is_reason_ipo_pre_launch_period;
    admin_trading_status_model_local_var->is_reason_market_wide_circuit_breaker_level1 = is_reason_market_wide_circuit_breaker_level1;
    admin_trading_status_model_local_var->is_reason_market_wide_circuit_breaker_level2 = is_reason_market_wide_circuit_breaker_level2;
    admin_trading_status_model_local_var->is_reason_market_wide_circuit_breaker_level3 = is_reason_market_wide_circuit_breaker_level3;
    admin_trading_status_model_local_var->is_reason_not_applicable = is_reason_not_applicable;
    admin_trading_status_model_local_var->is_reason_not_available = is_reason_not_available;

    admin_trading_status_model_local_var->_library_owned = 1;
    return admin_trading_status_model_local_var;
}

__attribute__((deprecated)) admin_trading_status_model_t *admin_trading_status_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int is_trading_live,
    int is_trading_halted,
    int is_trading_in_order_acceptance_period,
    int is_trading_paused,
    int is_reason_halt_news_pending,
    int is_reason_ipo_not_yet_trading,
    int is_reason_ipo_deferred,
    int is_reason_halt_news_dissemination,
    int is_reason_ipo_order_acceptance_period,
    int is_reason_ipo_pre_launch_period,
    int is_reason_market_wide_circuit_breaker_level1,
    int is_reason_market_wide_circuit_breaker_level2,
    int is_reason_market_wide_circuit_breaker_level3,
    int is_reason_not_applicable,
    int is_reason_not_available
    ) {
    return admin_trading_status_model_create_internal (
        symbol,
        timestamp_nanos,
        timestamp,
        is_trading_live,
        is_trading_halted,
        is_trading_in_order_acceptance_period,
        is_trading_paused,
        is_reason_halt_news_pending,
        is_reason_ipo_not_yet_trading,
        is_reason_ipo_deferred,
        is_reason_halt_news_dissemination,
        is_reason_ipo_order_acceptance_period,
        is_reason_ipo_pre_launch_period,
        is_reason_market_wide_circuit_breaker_level1,
        is_reason_market_wide_circuit_breaker_level2,
        is_reason_market_wide_circuit_breaker_level3,
        is_reason_not_applicable,
        is_reason_not_available
        );
}

void admin_trading_status_model_free(admin_trading_status_model_t *admin_trading_status_model) {
    if(NULL == admin_trading_status_model){
        return ;
    }
    if(admin_trading_status_model->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "admin_trading_status_model_free");
        return ;
    }
    listEntry_t *listEntry;
    if (admin_trading_status_model->symbol) {
        free(admin_trading_status_model->symbol);
        admin_trading_status_model->symbol = NULL;
    }
    if (admin_trading_status_model->timestamp) {
        free(admin_trading_status_model->timestamp);
        admin_trading_status_model->timestamp = NULL;
    }
    free(admin_trading_status_model);
}

cJSON *admin_trading_status_model_convertToJSON(admin_trading_status_model_t *admin_trading_status_model) {
    cJSON *item = cJSON_CreateObject();

    // admin_trading_status_model->symbol
    if(admin_trading_status_model->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", admin_trading_status_model->symbol) == NULL) {
    goto fail; //String
    }
    }


    // admin_trading_status_model->timestamp_nanos
    if(admin_trading_status_model->timestamp_nanos) {
    if(cJSON_AddNumberToObject(item, "timestamp_nanos", admin_trading_status_model->timestamp_nanos) == NULL) {
    goto fail; //Numeric
    }
    }


    // admin_trading_status_model->timestamp
    if(admin_trading_status_model->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", admin_trading_status_model->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // admin_trading_status_model->is_trading_live
    if(admin_trading_status_model->is_trading_live) {
    if(cJSON_AddBoolToObject(item, "is_trading_live", admin_trading_status_model->is_trading_live) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_trading_status_model->is_trading_halted
    if(admin_trading_status_model->is_trading_halted) {
    if(cJSON_AddBoolToObject(item, "is_trading_halted", admin_trading_status_model->is_trading_halted) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_trading_status_model->is_trading_in_order_acceptance_period
    if(admin_trading_status_model->is_trading_in_order_acceptance_period) {
    if(cJSON_AddBoolToObject(item, "is_trading_in_order_acceptance_period", admin_trading_status_model->is_trading_in_order_acceptance_period) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_trading_status_model->is_trading_paused
    if(admin_trading_status_model->is_trading_paused) {
    if(cJSON_AddBoolToObject(item, "is_trading_paused", admin_trading_status_model->is_trading_paused) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_trading_status_model->is_reason_halt_news_pending
    if(admin_trading_status_model->is_reason_halt_news_pending) {
    if(cJSON_AddBoolToObject(item, "is_reason_halt_news_pending", admin_trading_status_model->is_reason_halt_news_pending) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_trading_status_model->is_reason_ipo_not_yet_trading
    if(admin_trading_status_model->is_reason_ipo_not_yet_trading) {
    if(cJSON_AddBoolToObject(item, "is_reason_ipo_not_yet_trading", admin_trading_status_model->is_reason_ipo_not_yet_trading) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_trading_status_model->is_reason_ipo_deferred
    if(admin_trading_status_model->is_reason_ipo_deferred) {
    if(cJSON_AddBoolToObject(item, "is_reason_ipo_deferred", admin_trading_status_model->is_reason_ipo_deferred) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_trading_status_model->is_reason_halt_news_dissemination
    if(admin_trading_status_model->is_reason_halt_news_dissemination) {
    if(cJSON_AddBoolToObject(item, "is_reason_halt_news_dissemination", admin_trading_status_model->is_reason_halt_news_dissemination) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_trading_status_model->is_reason_ipo_order_acceptance_period
    if(admin_trading_status_model->is_reason_ipo_order_acceptance_period) {
    if(cJSON_AddBoolToObject(item, "is_reason_ipo_order_acceptance_period", admin_trading_status_model->is_reason_ipo_order_acceptance_period) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_trading_status_model->is_reason_ipo_pre_launch_period
    if(admin_trading_status_model->is_reason_ipo_pre_launch_period) {
    if(cJSON_AddBoolToObject(item, "is_reason_ipo_pre_launch_period", admin_trading_status_model->is_reason_ipo_pre_launch_period) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_trading_status_model->is_reason_market_wide_circuit_breaker_level1
    if(admin_trading_status_model->is_reason_market_wide_circuit_breaker_level1) {
    if(cJSON_AddBoolToObject(item, "is_reason_market_wide_circuit_breaker_level1", admin_trading_status_model->is_reason_market_wide_circuit_breaker_level1) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_trading_status_model->is_reason_market_wide_circuit_breaker_level2
    if(admin_trading_status_model->is_reason_market_wide_circuit_breaker_level2) {
    if(cJSON_AddBoolToObject(item, "is_reason_market_wide_circuit_breaker_level2", admin_trading_status_model->is_reason_market_wide_circuit_breaker_level2) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_trading_status_model->is_reason_market_wide_circuit_breaker_level3
    if(admin_trading_status_model->is_reason_market_wide_circuit_breaker_level3) {
    if(cJSON_AddBoolToObject(item, "is_reason_market_wide_circuit_breaker_level3", admin_trading_status_model->is_reason_market_wide_circuit_breaker_level3) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_trading_status_model->is_reason_not_applicable
    if(admin_trading_status_model->is_reason_not_applicable) {
    if(cJSON_AddBoolToObject(item, "is_reason_not_applicable", admin_trading_status_model->is_reason_not_applicable) == NULL) {
    goto fail; //Bool
    }
    }


    // admin_trading_status_model->is_reason_not_available
    if(admin_trading_status_model->is_reason_not_available) {
    if(cJSON_AddBoolToObject(item, "is_reason_not_available", admin_trading_status_model->is_reason_not_available) == NULL) {
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

admin_trading_status_model_t *admin_trading_status_model_parseFromJSON(cJSON *admin_trading_status_modelJSON){

    admin_trading_status_model_t *admin_trading_status_model_local_var = NULL;

    // admin_trading_status_model->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(admin_trading_status_modelJSON, "symbol");
    if (cJSON_IsNull(symbol)) {
        symbol = NULL;
    }
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // admin_trading_status_model->timestamp_nanos
    cJSON *timestamp_nanos = cJSON_GetObjectItemCaseSensitive(admin_trading_status_modelJSON, "timestamp_nanos");
    if (cJSON_IsNull(timestamp_nanos)) {
        timestamp_nanos = NULL;
    }
    if (timestamp_nanos) { 
    if(!cJSON_IsNumber(timestamp_nanos))
    {
    goto end; //Numeric
    }
    }

    // admin_trading_status_model->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(admin_trading_status_modelJSON, "timestamp");
    if (cJSON_IsNull(timestamp)) {
        timestamp = NULL;
    }
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //DateTime
    }
    }

    // admin_trading_status_model->is_trading_live
    cJSON *is_trading_live = cJSON_GetObjectItemCaseSensitive(admin_trading_status_modelJSON, "is_trading_live");
    if (cJSON_IsNull(is_trading_live)) {
        is_trading_live = NULL;
    }
    if (is_trading_live) { 
    if(!cJSON_IsBool(is_trading_live))
    {
    goto end; //Bool
    }
    }

    // admin_trading_status_model->is_trading_halted
    cJSON *is_trading_halted = cJSON_GetObjectItemCaseSensitive(admin_trading_status_modelJSON, "is_trading_halted");
    if (cJSON_IsNull(is_trading_halted)) {
        is_trading_halted = NULL;
    }
    if (is_trading_halted) { 
    if(!cJSON_IsBool(is_trading_halted))
    {
    goto end; //Bool
    }
    }

    // admin_trading_status_model->is_trading_in_order_acceptance_period
    cJSON *is_trading_in_order_acceptance_period = cJSON_GetObjectItemCaseSensitive(admin_trading_status_modelJSON, "is_trading_in_order_acceptance_period");
    if (cJSON_IsNull(is_trading_in_order_acceptance_period)) {
        is_trading_in_order_acceptance_period = NULL;
    }
    if (is_trading_in_order_acceptance_period) { 
    if(!cJSON_IsBool(is_trading_in_order_acceptance_period))
    {
    goto end; //Bool
    }
    }

    // admin_trading_status_model->is_trading_paused
    cJSON *is_trading_paused = cJSON_GetObjectItemCaseSensitive(admin_trading_status_modelJSON, "is_trading_paused");
    if (cJSON_IsNull(is_trading_paused)) {
        is_trading_paused = NULL;
    }
    if (is_trading_paused) { 
    if(!cJSON_IsBool(is_trading_paused))
    {
    goto end; //Bool
    }
    }

    // admin_trading_status_model->is_reason_halt_news_pending
    cJSON *is_reason_halt_news_pending = cJSON_GetObjectItemCaseSensitive(admin_trading_status_modelJSON, "is_reason_halt_news_pending");
    if (cJSON_IsNull(is_reason_halt_news_pending)) {
        is_reason_halt_news_pending = NULL;
    }
    if (is_reason_halt_news_pending) { 
    if(!cJSON_IsBool(is_reason_halt_news_pending))
    {
    goto end; //Bool
    }
    }

    // admin_trading_status_model->is_reason_ipo_not_yet_trading
    cJSON *is_reason_ipo_not_yet_trading = cJSON_GetObjectItemCaseSensitive(admin_trading_status_modelJSON, "is_reason_ipo_not_yet_trading");
    if (cJSON_IsNull(is_reason_ipo_not_yet_trading)) {
        is_reason_ipo_not_yet_trading = NULL;
    }
    if (is_reason_ipo_not_yet_trading) { 
    if(!cJSON_IsBool(is_reason_ipo_not_yet_trading))
    {
    goto end; //Bool
    }
    }

    // admin_trading_status_model->is_reason_ipo_deferred
    cJSON *is_reason_ipo_deferred = cJSON_GetObjectItemCaseSensitive(admin_trading_status_modelJSON, "is_reason_ipo_deferred");
    if (cJSON_IsNull(is_reason_ipo_deferred)) {
        is_reason_ipo_deferred = NULL;
    }
    if (is_reason_ipo_deferred) { 
    if(!cJSON_IsBool(is_reason_ipo_deferred))
    {
    goto end; //Bool
    }
    }

    // admin_trading_status_model->is_reason_halt_news_dissemination
    cJSON *is_reason_halt_news_dissemination = cJSON_GetObjectItemCaseSensitive(admin_trading_status_modelJSON, "is_reason_halt_news_dissemination");
    if (cJSON_IsNull(is_reason_halt_news_dissemination)) {
        is_reason_halt_news_dissemination = NULL;
    }
    if (is_reason_halt_news_dissemination) { 
    if(!cJSON_IsBool(is_reason_halt_news_dissemination))
    {
    goto end; //Bool
    }
    }

    // admin_trading_status_model->is_reason_ipo_order_acceptance_period
    cJSON *is_reason_ipo_order_acceptance_period = cJSON_GetObjectItemCaseSensitive(admin_trading_status_modelJSON, "is_reason_ipo_order_acceptance_period");
    if (cJSON_IsNull(is_reason_ipo_order_acceptance_period)) {
        is_reason_ipo_order_acceptance_period = NULL;
    }
    if (is_reason_ipo_order_acceptance_period) { 
    if(!cJSON_IsBool(is_reason_ipo_order_acceptance_period))
    {
    goto end; //Bool
    }
    }

    // admin_trading_status_model->is_reason_ipo_pre_launch_period
    cJSON *is_reason_ipo_pre_launch_period = cJSON_GetObjectItemCaseSensitive(admin_trading_status_modelJSON, "is_reason_ipo_pre_launch_period");
    if (cJSON_IsNull(is_reason_ipo_pre_launch_period)) {
        is_reason_ipo_pre_launch_period = NULL;
    }
    if (is_reason_ipo_pre_launch_period) { 
    if(!cJSON_IsBool(is_reason_ipo_pre_launch_period))
    {
    goto end; //Bool
    }
    }

    // admin_trading_status_model->is_reason_market_wide_circuit_breaker_level1
    cJSON *is_reason_market_wide_circuit_breaker_level1 = cJSON_GetObjectItemCaseSensitive(admin_trading_status_modelJSON, "is_reason_market_wide_circuit_breaker_level1");
    if (cJSON_IsNull(is_reason_market_wide_circuit_breaker_level1)) {
        is_reason_market_wide_circuit_breaker_level1 = NULL;
    }
    if (is_reason_market_wide_circuit_breaker_level1) { 
    if(!cJSON_IsBool(is_reason_market_wide_circuit_breaker_level1))
    {
    goto end; //Bool
    }
    }

    // admin_trading_status_model->is_reason_market_wide_circuit_breaker_level2
    cJSON *is_reason_market_wide_circuit_breaker_level2 = cJSON_GetObjectItemCaseSensitive(admin_trading_status_modelJSON, "is_reason_market_wide_circuit_breaker_level2");
    if (cJSON_IsNull(is_reason_market_wide_circuit_breaker_level2)) {
        is_reason_market_wide_circuit_breaker_level2 = NULL;
    }
    if (is_reason_market_wide_circuit_breaker_level2) { 
    if(!cJSON_IsBool(is_reason_market_wide_circuit_breaker_level2))
    {
    goto end; //Bool
    }
    }

    // admin_trading_status_model->is_reason_market_wide_circuit_breaker_level3
    cJSON *is_reason_market_wide_circuit_breaker_level3 = cJSON_GetObjectItemCaseSensitive(admin_trading_status_modelJSON, "is_reason_market_wide_circuit_breaker_level3");
    if (cJSON_IsNull(is_reason_market_wide_circuit_breaker_level3)) {
        is_reason_market_wide_circuit_breaker_level3 = NULL;
    }
    if (is_reason_market_wide_circuit_breaker_level3) { 
    if(!cJSON_IsBool(is_reason_market_wide_circuit_breaker_level3))
    {
    goto end; //Bool
    }
    }

    // admin_trading_status_model->is_reason_not_applicable
    cJSON *is_reason_not_applicable = cJSON_GetObjectItemCaseSensitive(admin_trading_status_modelJSON, "is_reason_not_applicable");
    if (cJSON_IsNull(is_reason_not_applicable)) {
        is_reason_not_applicable = NULL;
    }
    if (is_reason_not_applicable) { 
    if(!cJSON_IsBool(is_reason_not_applicable))
    {
    goto end; //Bool
    }
    }

    // admin_trading_status_model->is_reason_not_available
    cJSON *is_reason_not_available = cJSON_GetObjectItemCaseSensitive(admin_trading_status_modelJSON, "is_reason_not_available");
    if (cJSON_IsNull(is_reason_not_available)) {
        is_reason_not_available = NULL;
    }
    if (is_reason_not_available) { 
    if(!cJSON_IsBool(is_reason_not_available))
    {
    goto end; //Bool
    }
    }


    admin_trading_status_model_local_var = admin_trading_status_model_create_internal (
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        timestamp_nanos ? timestamp_nanos->valuedouble : 0,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        is_trading_live ? is_trading_live->valueint : 0,
        is_trading_halted ? is_trading_halted->valueint : 0,
        is_trading_in_order_acceptance_period ? is_trading_in_order_acceptance_period->valueint : 0,
        is_trading_paused ? is_trading_paused->valueint : 0,
        is_reason_halt_news_pending ? is_reason_halt_news_pending->valueint : 0,
        is_reason_ipo_not_yet_trading ? is_reason_ipo_not_yet_trading->valueint : 0,
        is_reason_ipo_deferred ? is_reason_ipo_deferred->valueint : 0,
        is_reason_halt_news_dissemination ? is_reason_halt_news_dissemination->valueint : 0,
        is_reason_ipo_order_acceptance_period ? is_reason_ipo_order_acceptance_period->valueint : 0,
        is_reason_ipo_pre_launch_period ? is_reason_ipo_pre_launch_period->valueint : 0,
        is_reason_market_wide_circuit_breaker_level1 ? is_reason_market_wide_circuit_breaker_level1->valueint : 0,
        is_reason_market_wide_circuit_breaker_level2 ? is_reason_market_wide_circuit_breaker_level2->valueint : 0,
        is_reason_market_wide_circuit_breaker_level3 ? is_reason_market_wide_circuit_breaker_level3->valueint : 0,
        is_reason_not_applicable ? is_reason_not_applicable->valueint : 0,
        is_reason_not_available ? is_reason_not_available->valueint : 0
        );

    return admin_trading_status_model_local_var;
end:
    return NULL;

}
