#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "admin_admin_message_model.h"



static admin_admin_message_model_t *admin_admin_message_model_create_internal(
    admin_trading_status_model_t *trading_status,
    admin_official_price_model_t *official_price,
    admin_security_event_model_t *security_event,
    admin_auction_information_model_t *auction_information,
    admin_short_sale_price_test_status_model_t *short_sale_price_test,
    admin_operational_halt_status_model_t *operational_halt_status,
    admin_retail_liquidity_indicator_model_t *retail_liquidity_indicator,
    admin_system_event_model_t *system_event,
    admin_security_directory_model_t *security_directory
    ) {
    admin_admin_message_model_t *admin_admin_message_model_local_var = malloc(sizeof(admin_admin_message_model_t));
    if (!admin_admin_message_model_local_var) {
        return NULL;
    }
    admin_admin_message_model_local_var->trading_status = trading_status;
    admin_admin_message_model_local_var->official_price = official_price;
    admin_admin_message_model_local_var->security_event = security_event;
    admin_admin_message_model_local_var->auction_information = auction_information;
    admin_admin_message_model_local_var->short_sale_price_test = short_sale_price_test;
    admin_admin_message_model_local_var->operational_halt_status = operational_halt_status;
    admin_admin_message_model_local_var->retail_liquidity_indicator = retail_liquidity_indicator;
    admin_admin_message_model_local_var->system_event = system_event;
    admin_admin_message_model_local_var->security_directory = security_directory;

    admin_admin_message_model_local_var->_library_owned = 1;
    return admin_admin_message_model_local_var;
}

__attribute__((deprecated)) admin_admin_message_model_t *admin_admin_message_model_create(
    admin_trading_status_model_t *trading_status,
    admin_official_price_model_t *official_price,
    admin_security_event_model_t *security_event,
    admin_auction_information_model_t *auction_information,
    admin_short_sale_price_test_status_model_t *short_sale_price_test,
    admin_operational_halt_status_model_t *operational_halt_status,
    admin_retail_liquidity_indicator_model_t *retail_liquidity_indicator,
    admin_system_event_model_t *system_event,
    admin_security_directory_model_t *security_directory
    ) {
    return admin_admin_message_model_create_internal (
        trading_status,
        official_price,
        security_event,
        auction_information,
        short_sale_price_test,
        operational_halt_status,
        retail_liquidity_indicator,
        system_event,
        security_directory
        );
}

void admin_admin_message_model_free(admin_admin_message_model_t *admin_admin_message_model) {
    if(NULL == admin_admin_message_model){
        return ;
    }
    if(admin_admin_message_model->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "admin_admin_message_model_free");
        return ;
    }
    listEntry_t *listEntry;
    if (admin_admin_message_model->trading_status) {
        admin_trading_status_model_free(admin_admin_message_model->trading_status);
        admin_admin_message_model->trading_status = NULL;
    }
    if (admin_admin_message_model->official_price) {
        admin_official_price_model_free(admin_admin_message_model->official_price);
        admin_admin_message_model->official_price = NULL;
    }
    if (admin_admin_message_model->security_event) {
        admin_security_event_model_free(admin_admin_message_model->security_event);
        admin_admin_message_model->security_event = NULL;
    }
    if (admin_admin_message_model->auction_information) {
        admin_auction_information_model_free(admin_admin_message_model->auction_information);
        admin_admin_message_model->auction_information = NULL;
    }
    if (admin_admin_message_model->short_sale_price_test) {
        admin_short_sale_price_test_status_model_free(admin_admin_message_model->short_sale_price_test);
        admin_admin_message_model->short_sale_price_test = NULL;
    }
    if (admin_admin_message_model->operational_halt_status) {
        admin_operational_halt_status_model_free(admin_admin_message_model->operational_halt_status);
        admin_admin_message_model->operational_halt_status = NULL;
    }
    if (admin_admin_message_model->retail_liquidity_indicator) {
        admin_retail_liquidity_indicator_model_free(admin_admin_message_model->retail_liquidity_indicator);
        admin_admin_message_model->retail_liquidity_indicator = NULL;
    }
    if (admin_admin_message_model->system_event) {
        admin_system_event_model_free(admin_admin_message_model->system_event);
        admin_admin_message_model->system_event = NULL;
    }
    if (admin_admin_message_model->security_directory) {
        admin_security_directory_model_free(admin_admin_message_model->security_directory);
        admin_admin_message_model->security_directory = NULL;
    }
    free(admin_admin_message_model);
}

cJSON *admin_admin_message_model_convertToJSON(admin_admin_message_model_t *admin_admin_message_model) {
    cJSON *item = cJSON_CreateObject();

    // admin_admin_message_model->trading_status
    if(admin_admin_message_model->trading_status) {
    cJSON *trading_status_local_JSON = admin_trading_status_model_convertToJSON(admin_admin_message_model->trading_status);
    if(trading_status_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "trading_status", trading_status_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // admin_admin_message_model->official_price
    if(admin_admin_message_model->official_price) {
    cJSON *official_price_local_JSON = admin_official_price_model_convertToJSON(admin_admin_message_model->official_price);
    if(official_price_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "official_price", official_price_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // admin_admin_message_model->security_event
    if(admin_admin_message_model->security_event) {
    cJSON *security_event_local_JSON = admin_security_event_model_convertToJSON(admin_admin_message_model->security_event);
    if(security_event_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "security_event", security_event_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // admin_admin_message_model->auction_information
    if(admin_admin_message_model->auction_information) {
    cJSON *auction_information_local_JSON = admin_auction_information_model_convertToJSON(admin_admin_message_model->auction_information);
    if(auction_information_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "auction_information", auction_information_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // admin_admin_message_model->short_sale_price_test
    if(admin_admin_message_model->short_sale_price_test) {
    cJSON *short_sale_price_test_local_JSON = admin_short_sale_price_test_status_model_convertToJSON(admin_admin_message_model->short_sale_price_test);
    if(short_sale_price_test_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "short_sale_price_test", short_sale_price_test_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // admin_admin_message_model->operational_halt_status
    if(admin_admin_message_model->operational_halt_status) {
    cJSON *operational_halt_status_local_JSON = admin_operational_halt_status_model_convertToJSON(admin_admin_message_model->operational_halt_status);
    if(operational_halt_status_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "operational_halt_status", operational_halt_status_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // admin_admin_message_model->retail_liquidity_indicator
    if(admin_admin_message_model->retail_liquidity_indicator) {
    cJSON *retail_liquidity_indicator_local_JSON = admin_retail_liquidity_indicator_model_convertToJSON(admin_admin_message_model->retail_liquidity_indicator);
    if(retail_liquidity_indicator_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "retail_liquidity_indicator", retail_liquidity_indicator_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // admin_admin_message_model->system_event
    if(admin_admin_message_model->system_event) {
    cJSON *system_event_local_JSON = admin_system_event_model_convertToJSON(admin_admin_message_model->system_event);
    if(system_event_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "system_event", system_event_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // admin_admin_message_model->security_directory
    if(admin_admin_message_model->security_directory) {
    cJSON *security_directory_local_JSON = admin_security_directory_model_convertToJSON(admin_admin_message_model->security_directory);
    if(security_directory_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "security_directory", security_directory_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

admin_admin_message_model_t *admin_admin_message_model_parseFromJSON(cJSON *admin_admin_message_modelJSON){

    admin_admin_message_model_t *admin_admin_message_model_local_var = NULL;

    // define the local variable for admin_admin_message_model->trading_status
    admin_trading_status_model_t *trading_status_local_nonprim = NULL;

    // define the local variable for admin_admin_message_model->official_price
    admin_official_price_model_t *official_price_local_nonprim = NULL;

    // define the local variable for admin_admin_message_model->security_event
    admin_security_event_model_t *security_event_local_nonprim = NULL;

    // define the local variable for admin_admin_message_model->auction_information
    admin_auction_information_model_t *auction_information_local_nonprim = NULL;

    // define the local variable for admin_admin_message_model->short_sale_price_test
    admin_short_sale_price_test_status_model_t *short_sale_price_test_local_nonprim = NULL;

    // define the local variable for admin_admin_message_model->operational_halt_status
    admin_operational_halt_status_model_t *operational_halt_status_local_nonprim = NULL;

    // define the local variable for admin_admin_message_model->retail_liquidity_indicator
    admin_retail_liquidity_indicator_model_t *retail_liquidity_indicator_local_nonprim = NULL;

    // define the local variable for admin_admin_message_model->system_event
    admin_system_event_model_t *system_event_local_nonprim = NULL;

    // define the local variable for admin_admin_message_model->security_directory
    admin_security_directory_model_t *security_directory_local_nonprim = NULL;

    // admin_admin_message_model->trading_status
    cJSON *trading_status = cJSON_GetObjectItemCaseSensitive(admin_admin_message_modelJSON, "trading_status");
    if (cJSON_IsNull(trading_status)) {
        trading_status = NULL;
    }
    if (trading_status) { 
    trading_status_local_nonprim = admin_trading_status_model_parseFromJSON(trading_status); //nonprimitive
    }

    // admin_admin_message_model->official_price
    cJSON *official_price = cJSON_GetObjectItemCaseSensitive(admin_admin_message_modelJSON, "official_price");
    if (cJSON_IsNull(official_price)) {
        official_price = NULL;
    }
    if (official_price) { 
    official_price_local_nonprim = admin_official_price_model_parseFromJSON(official_price); //nonprimitive
    }

    // admin_admin_message_model->security_event
    cJSON *security_event = cJSON_GetObjectItemCaseSensitive(admin_admin_message_modelJSON, "security_event");
    if (cJSON_IsNull(security_event)) {
        security_event = NULL;
    }
    if (security_event) { 
    security_event_local_nonprim = admin_security_event_model_parseFromJSON(security_event); //nonprimitive
    }

    // admin_admin_message_model->auction_information
    cJSON *auction_information = cJSON_GetObjectItemCaseSensitive(admin_admin_message_modelJSON, "auction_information");
    if (cJSON_IsNull(auction_information)) {
        auction_information = NULL;
    }
    if (auction_information) { 
    auction_information_local_nonprim = admin_auction_information_model_parseFromJSON(auction_information); //nonprimitive
    }

    // admin_admin_message_model->short_sale_price_test
    cJSON *short_sale_price_test = cJSON_GetObjectItemCaseSensitive(admin_admin_message_modelJSON, "short_sale_price_test");
    if (cJSON_IsNull(short_sale_price_test)) {
        short_sale_price_test = NULL;
    }
    if (short_sale_price_test) { 
    short_sale_price_test_local_nonprim = admin_short_sale_price_test_status_model_parseFromJSON(short_sale_price_test); //nonprimitive
    }

    // admin_admin_message_model->operational_halt_status
    cJSON *operational_halt_status = cJSON_GetObjectItemCaseSensitive(admin_admin_message_modelJSON, "operational_halt_status");
    if (cJSON_IsNull(operational_halt_status)) {
        operational_halt_status = NULL;
    }
    if (operational_halt_status) { 
    operational_halt_status_local_nonprim = admin_operational_halt_status_model_parseFromJSON(operational_halt_status); //nonprimitive
    }

    // admin_admin_message_model->retail_liquidity_indicator
    cJSON *retail_liquidity_indicator = cJSON_GetObjectItemCaseSensitive(admin_admin_message_modelJSON, "retail_liquidity_indicator");
    if (cJSON_IsNull(retail_liquidity_indicator)) {
        retail_liquidity_indicator = NULL;
    }
    if (retail_liquidity_indicator) { 
    retail_liquidity_indicator_local_nonprim = admin_retail_liquidity_indicator_model_parseFromJSON(retail_liquidity_indicator); //nonprimitive
    }

    // admin_admin_message_model->system_event
    cJSON *system_event = cJSON_GetObjectItemCaseSensitive(admin_admin_message_modelJSON, "system_event");
    if (cJSON_IsNull(system_event)) {
        system_event = NULL;
    }
    if (system_event) { 
    system_event_local_nonprim = admin_system_event_model_parseFromJSON(system_event); //nonprimitive
    }

    // admin_admin_message_model->security_directory
    cJSON *security_directory = cJSON_GetObjectItemCaseSensitive(admin_admin_message_modelJSON, "security_directory");
    if (cJSON_IsNull(security_directory)) {
        security_directory = NULL;
    }
    if (security_directory) { 
    security_directory_local_nonprim = admin_security_directory_model_parseFromJSON(security_directory); //nonprimitive
    }


    admin_admin_message_model_local_var = admin_admin_message_model_create_internal (
        trading_status ? trading_status_local_nonprim : NULL,
        official_price ? official_price_local_nonprim : NULL,
        security_event ? security_event_local_nonprim : NULL,
        auction_information ? auction_information_local_nonprim : NULL,
        short_sale_price_test ? short_sale_price_test_local_nonprim : NULL,
        operational_halt_status ? operational_halt_status_local_nonprim : NULL,
        retail_liquidity_indicator ? retail_liquidity_indicator_local_nonprim : NULL,
        system_event ? system_event_local_nonprim : NULL,
        security_directory ? security_directory_local_nonprim : NULL
        );

    return admin_admin_message_model_local_var;
end:
    if (trading_status_local_nonprim) {
        admin_trading_status_model_free(trading_status_local_nonprim);
        trading_status_local_nonprim = NULL;
    }
    if (official_price_local_nonprim) {
        admin_official_price_model_free(official_price_local_nonprim);
        official_price_local_nonprim = NULL;
    }
    if (security_event_local_nonprim) {
        admin_security_event_model_free(security_event_local_nonprim);
        security_event_local_nonprim = NULL;
    }
    if (auction_information_local_nonprim) {
        admin_auction_information_model_free(auction_information_local_nonprim);
        auction_information_local_nonprim = NULL;
    }
    if (short_sale_price_test_local_nonprim) {
        admin_short_sale_price_test_status_model_free(short_sale_price_test_local_nonprim);
        short_sale_price_test_local_nonprim = NULL;
    }
    if (operational_halt_status_local_nonprim) {
        admin_operational_halt_status_model_free(operational_halt_status_local_nonprim);
        operational_halt_status_local_nonprim = NULL;
    }
    if (retail_liquidity_indicator_local_nonprim) {
        admin_retail_liquidity_indicator_model_free(retail_liquidity_indicator_local_nonprim);
        retail_liquidity_indicator_local_nonprim = NULL;
    }
    if (system_event_local_nonprim) {
        admin_system_event_model_free(system_event_local_nonprim);
        system_event_local_nonprim = NULL;
    }
    if (security_directory_local_nonprim) {
        admin_security_directory_model_free(security_directory_local_nonprim);
        security_directory_local_nonprim = NULL;
    }
    return NULL;

}
