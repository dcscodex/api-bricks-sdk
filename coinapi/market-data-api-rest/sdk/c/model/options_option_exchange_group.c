#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "options_option_exchange_group.h"



static options_option_exchange_group_t *options_option_exchange_group_create_internal(
    char *asset_id_base,
    char *asset_id_quote,
    double underlying_price,
    char *time_expiration,
    list_t *strikes
    ) {
    options_option_exchange_group_t *options_option_exchange_group_local_var = malloc(sizeof(options_option_exchange_group_t));
    if (!options_option_exchange_group_local_var) {
        return NULL;
    }
    options_option_exchange_group_local_var->asset_id_base = asset_id_base;
    options_option_exchange_group_local_var->asset_id_quote = asset_id_quote;
    options_option_exchange_group_local_var->underlying_price = underlying_price;
    options_option_exchange_group_local_var->time_expiration = time_expiration;
    options_option_exchange_group_local_var->strikes = strikes;

    options_option_exchange_group_local_var->_library_owned = 1;
    return options_option_exchange_group_local_var;
}

__attribute__((deprecated)) options_option_exchange_group_t *options_option_exchange_group_create(
    char *asset_id_base,
    char *asset_id_quote,
    double underlying_price,
    char *time_expiration,
    list_t *strikes
    ) {
    return options_option_exchange_group_create_internal (
        asset_id_base,
        asset_id_quote,
        underlying_price,
        time_expiration,
        strikes
        );
}

void options_option_exchange_group_free(options_option_exchange_group_t *options_option_exchange_group) {
    if(NULL == options_option_exchange_group){
        return ;
    }
    if(options_option_exchange_group->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "options_option_exchange_group_free");
        return ;
    }
    listEntry_t *listEntry;
    if (options_option_exchange_group->asset_id_base) {
        free(options_option_exchange_group->asset_id_base);
        options_option_exchange_group->asset_id_base = NULL;
    }
    if (options_option_exchange_group->asset_id_quote) {
        free(options_option_exchange_group->asset_id_quote);
        options_option_exchange_group->asset_id_quote = NULL;
    }
    if (options_option_exchange_group->time_expiration) {
        free(options_option_exchange_group->time_expiration);
        options_option_exchange_group->time_expiration = NULL;
    }
    if (options_option_exchange_group->strikes) {
        list_ForEach(listEntry, options_option_exchange_group->strikes) {
            options_strike_free(listEntry->data);
        }
        list_freeList(options_option_exchange_group->strikes);
        options_option_exchange_group->strikes = NULL;
    }
    free(options_option_exchange_group);
}

cJSON *options_option_exchange_group_convertToJSON(options_option_exchange_group_t *options_option_exchange_group) {
    cJSON *item = cJSON_CreateObject();

    // options_option_exchange_group->asset_id_base
    if(options_option_exchange_group->asset_id_base) {
    if(cJSON_AddStringToObject(item, "asset_id_base", options_option_exchange_group->asset_id_base) == NULL) {
    goto fail; //String
    }
    }


    // options_option_exchange_group->asset_id_quote
    if(options_option_exchange_group->asset_id_quote) {
    if(cJSON_AddStringToObject(item, "asset_id_quote", options_option_exchange_group->asset_id_quote) == NULL) {
    goto fail; //String
    }
    }


    // options_option_exchange_group->underlying_price
    if(options_option_exchange_group->underlying_price) {
    if(cJSON_AddNumberToObject(item, "underlying_price", options_option_exchange_group->underlying_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // options_option_exchange_group->time_expiration
    if(options_option_exchange_group->time_expiration) {
    if(cJSON_AddStringToObject(item, "time_expiration", options_option_exchange_group->time_expiration) == NULL) {
    goto fail; //Date-Time
    }
    }


    // options_option_exchange_group->strikes
    if(options_option_exchange_group->strikes) {
    cJSON *strikes = cJSON_AddArrayToObject(item, "strikes");
    if(strikes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *strikesListEntry;
    if (options_option_exchange_group->strikes) {
    list_ForEach(strikesListEntry, options_option_exchange_group->strikes) {
    cJSON *itemLocal = options_strike_convertToJSON(strikesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(strikes, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

options_option_exchange_group_t *options_option_exchange_group_parseFromJSON(cJSON *options_option_exchange_groupJSON){

    options_option_exchange_group_t *options_option_exchange_group_local_var = NULL;

    // define the local list for options_option_exchange_group->strikes
    list_t *strikesList = NULL;

    // options_option_exchange_group->asset_id_base
    cJSON *asset_id_base = cJSON_GetObjectItemCaseSensitive(options_option_exchange_groupJSON, "asset_id_base");
    if (cJSON_IsNull(asset_id_base)) {
        asset_id_base = NULL;
    }
    if (asset_id_base) { 
    if(!cJSON_IsString(asset_id_base) && !cJSON_IsNull(asset_id_base))
    {
    goto end; //String
    }
    }

    // options_option_exchange_group->asset_id_quote
    cJSON *asset_id_quote = cJSON_GetObjectItemCaseSensitive(options_option_exchange_groupJSON, "asset_id_quote");
    if (cJSON_IsNull(asset_id_quote)) {
        asset_id_quote = NULL;
    }
    if (asset_id_quote) { 
    if(!cJSON_IsString(asset_id_quote) && !cJSON_IsNull(asset_id_quote))
    {
    goto end; //String
    }
    }

    // options_option_exchange_group->underlying_price
    cJSON *underlying_price = cJSON_GetObjectItemCaseSensitive(options_option_exchange_groupJSON, "underlying_price");
    if (cJSON_IsNull(underlying_price)) {
        underlying_price = NULL;
    }
    if (underlying_price) { 
    if(!cJSON_IsNumber(underlying_price))
    {
    goto end; //Numeric
    }
    }

    // options_option_exchange_group->time_expiration
    cJSON *time_expiration = cJSON_GetObjectItemCaseSensitive(options_option_exchange_groupJSON, "time_expiration");
    if (cJSON_IsNull(time_expiration)) {
        time_expiration = NULL;
    }
    if (time_expiration) { 
    if(!cJSON_IsString(time_expiration) && !cJSON_IsNull(time_expiration))
    {
    goto end; //DateTime
    }
    }

    // options_option_exchange_group->strikes
    cJSON *strikes = cJSON_GetObjectItemCaseSensitive(options_option_exchange_groupJSON, "strikes");
    if (cJSON_IsNull(strikes)) {
        strikes = NULL;
    }
    if (strikes) { 
    cJSON *strikes_local_nonprimitive = NULL;
    if(!cJSON_IsArray(strikes)){
        goto end; //nonprimitive container
    }

    strikesList = list_createList();

    cJSON_ArrayForEach(strikes_local_nonprimitive,strikes )
    {
        if(!cJSON_IsObject(strikes_local_nonprimitive)){
            goto end;
        }
        options_strike_t *strikesItem = options_strike_parseFromJSON(strikes_local_nonprimitive);

        list_addElement(strikesList, strikesItem);
    }
    }


    options_option_exchange_group_local_var = options_option_exchange_group_create_internal (
        asset_id_base && !cJSON_IsNull(asset_id_base) ? strdup(asset_id_base->valuestring) : NULL,
        asset_id_quote && !cJSON_IsNull(asset_id_quote) ? strdup(asset_id_quote->valuestring) : NULL,
        underlying_price ? underlying_price->valuedouble : 0,
        time_expiration && !cJSON_IsNull(time_expiration) ? strdup(time_expiration->valuestring) : NULL,
        strikes ? strikesList : NULL
        );

    return options_option_exchange_group_local_var;
end:
    if (strikesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, strikesList) {
            options_strike_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(strikesList);
        strikesList = NULL;
    }
    return NULL;

}
