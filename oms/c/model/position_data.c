#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "position_data.h"



position_data_t *position_data_create(
    char *id,
    char *symbol_exchange,
    char *symbol_coinapi,
    double avg_entry_price,
    double quantity,
    int is_buy,
    double unrealised_pn_l,
    double leverage,
    int cross_margin,
    double liquidation_price,
    char *raw_data
    ) {
    position_data_t *position_data_local_var = malloc(sizeof(position_data_t));
    if (!position_data_local_var) {
        return NULL;
    }
    position_data_local_var->id = id;
    position_data_local_var->symbol_exchange = symbol_exchange;
    position_data_local_var->symbol_coinapi = symbol_coinapi;
    position_data_local_var->avg_entry_price = avg_entry_price;
    position_data_local_var->quantity = quantity;
    position_data_local_var->is_buy = is_buy;
    position_data_local_var->unrealised_pn_l = unrealised_pn_l;
    position_data_local_var->leverage = leverage;
    position_data_local_var->cross_margin = cross_margin;
    position_data_local_var->liquidation_price = liquidation_price;
    position_data_local_var->raw_data = raw_data;

    return position_data_local_var;
}


void position_data_free(position_data_t *position_data) {
    if(NULL == position_data){
        return ;
    }
    listEntry_t *listEntry;
    free(position_data->id);
    free(position_data->symbol_exchange);
    free(position_data->symbol_coinapi);
    free(position_data->raw_data);
    free(position_data);
}

cJSON *position_data_convertToJSON(position_data_t *position_data) {
    cJSON *item = cJSON_CreateObject();

    // position_data->id
    if(position_data->id) { 
    if(cJSON_AddStringToObject(item, "id", position_data->id) == NULL) {
    goto fail; //String
    }
     } 


    // position_data->symbol_exchange
    if(position_data->symbol_exchange) { 
    if(cJSON_AddStringToObject(item, "symbol_exchange", position_data->symbol_exchange) == NULL) {
    goto fail; //String
    }
     } 


    // position_data->symbol_coinapi
    if(position_data->symbol_coinapi) { 
    if(cJSON_AddStringToObject(item, "symbol_coinapi", position_data->symbol_coinapi) == NULL) {
    goto fail; //String
    }
     } 


    // position_data->avg_entry_price
    if(position_data->avg_entry_price) { 
    if(cJSON_AddNumberToObject(item, "avg_entry_price", position_data->avg_entry_price) == NULL) {
    goto fail; //Numeric
    }
     } 


    // position_data->quantity
    if(position_data->quantity) { 
    if(cJSON_AddNumberToObject(item, "quantity", position_data->quantity) == NULL) {
    goto fail; //Numeric
    }
     } 


    // position_data->is_buy
    if(position_data->is_buy) { 
    if(cJSON_AddBoolToObject(item, "is_buy", position_data->is_buy) == NULL) {
    goto fail; //Bool
    }
     } 


    // position_data->unrealised_pn_l
    if(position_data->unrealised_pn_l) { 
    if(cJSON_AddNumberToObject(item, "unrealised_pn_l", position_data->unrealised_pn_l) == NULL) {
    goto fail; //Numeric
    }
     } 


    // position_data->leverage
    if(position_data->leverage) { 
    if(cJSON_AddNumberToObject(item, "leverage", position_data->leverage) == NULL) {
    goto fail; //Numeric
    }
     } 


    // position_data->cross_margin
    if(position_data->cross_margin) { 
    if(cJSON_AddBoolToObject(item, "cross_margin", position_data->cross_margin) == NULL) {
    goto fail; //Bool
    }
     } 


    // position_data->liquidation_price
    if(position_data->liquidation_price) { 
    if(cJSON_AddNumberToObject(item, "liquidation_price", position_data->liquidation_price) == NULL) {
    goto fail; //Numeric
    }
     } 


    // position_data->raw_data
    if(position_data->raw_data) { 
    if(cJSON_AddStringToObject(item, "raw_data", position_data->raw_data) == NULL) {
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

position_data_t *position_data_parseFromJSON(cJSON *position_dataJSON){

    position_data_t *position_data_local_var = NULL;

    // position_data->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(position_dataJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // position_data->symbol_exchange
    cJSON *symbol_exchange = cJSON_GetObjectItemCaseSensitive(position_dataJSON, "symbol_exchange");
    if (symbol_exchange) { 
    if(!cJSON_IsString(symbol_exchange))
    {
    goto end; //String
    }
    }

    // position_data->symbol_coinapi
    cJSON *symbol_coinapi = cJSON_GetObjectItemCaseSensitive(position_dataJSON, "symbol_coinapi");
    if (symbol_coinapi) { 
    if(!cJSON_IsString(symbol_coinapi))
    {
    goto end; //String
    }
    }

    // position_data->avg_entry_price
    cJSON *avg_entry_price = cJSON_GetObjectItemCaseSensitive(position_dataJSON, "avg_entry_price");
    if (avg_entry_price) { 
    if(!cJSON_IsNumber(avg_entry_price))
    {
    goto end; //Numeric
    }
    }

    // position_data->quantity
    cJSON *quantity = cJSON_GetObjectItemCaseSensitive(position_dataJSON, "quantity");
    if (quantity) { 
    if(!cJSON_IsNumber(quantity))
    {
    goto end; //Numeric
    }
    }

    // position_data->is_buy
    cJSON *is_buy = cJSON_GetObjectItemCaseSensitive(position_dataJSON, "is_buy");
    if (is_buy) { 
    if(!cJSON_IsBool(is_buy))
    {
    goto end; //Bool
    }
    }

    // position_data->unrealised_pn_l
    cJSON *unrealised_pn_l = cJSON_GetObjectItemCaseSensitive(position_dataJSON, "unrealised_pn_l");
    if (unrealised_pn_l) { 
    if(!cJSON_IsNumber(unrealised_pn_l))
    {
    goto end; //Numeric
    }
    }

    // position_data->leverage
    cJSON *leverage = cJSON_GetObjectItemCaseSensitive(position_dataJSON, "leverage");
    if (leverage) { 
    if(!cJSON_IsNumber(leverage))
    {
    goto end; //Numeric
    }
    }

    // position_data->cross_margin
    cJSON *cross_margin = cJSON_GetObjectItemCaseSensitive(position_dataJSON, "cross_margin");
    if (cross_margin) { 
    if(!cJSON_IsBool(cross_margin))
    {
    goto end; //Bool
    }
    }

    // position_data->liquidation_price
    cJSON *liquidation_price = cJSON_GetObjectItemCaseSensitive(position_dataJSON, "liquidation_price");
    if (liquidation_price) { 
    if(!cJSON_IsNumber(liquidation_price))
    {
    goto end; //Numeric
    }
    }

    // position_data->raw_data
    cJSON *raw_data = cJSON_GetObjectItemCaseSensitive(position_dataJSON, "raw_data");
    if (raw_data) { 
    if(!cJSON_IsString(raw_data))
    {
    goto end; //String
    }
    }


    position_data_local_var = position_data_create (
        id ? strdup(id->valuestring) : NULL,
        symbol_exchange ? strdup(symbol_exchange->valuestring) : NULL,
        symbol_coinapi ? strdup(symbol_coinapi->valuestring) : NULL,
        avg_entry_price ? avg_entry_price->valuedouble : 0,
        quantity ? quantity->valuedouble : 0,
        is_buy ? is_buy->valueint : 0,
        unrealised_pn_l ? unrealised_pn_l->valuedouble : 0,
        leverage ? leverage->valuedouble : 0,
        cross_margin ? cross_margin->valueint : 0,
        liquidation_price ? liquidation_price->valuedouble : 0,
        raw_data ? strdup(raw_data->valuestring) : NULL
        );

    return position_data_local_var;
end:
    return NULL;

}
