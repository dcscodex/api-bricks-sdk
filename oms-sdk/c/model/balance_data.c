#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "balance_data.h"


char* update_originbalance_data_ToString(oms___rest_api_balance_data_UPDATEORIGIN_e update_origin) {
    char* update_originArray[] =  { "NULL", "INITIALIZATION", "BALANCE_MANAGER", "EXCHANGE" };
	return update_originArray[update_origin];
}

oms___rest_api_balance_data_UPDATEORIGIN_e update_originbalance_data_FromString(char* update_origin){
    int stringToReturn = 0;
    char *update_originArray[] =  { "NULL", "INITIALIZATION", "BALANCE_MANAGER", "EXCHANGE" };
    size_t sizeofArray = sizeof(update_originArray) / sizeof(update_originArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(update_origin, update_originArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

balance_data_t *balance_data_create(
    char *id,
    char *symbol_exchange,
    char *symbol_coinapi,
    float balance,
    float available,
    float locked,
    oms___rest_api_balance_data_UPDATEORIGIN_e update_origin
    ) {
    balance_data_t *balance_data_local_var = malloc(sizeof(balance_data_t));
    if (!balance_data_local_var) {
        return NULL;
    }
    balance_data_local_var->id = id;
    balance_data_local_var->symbol_exchange = symbol_exchange;
    balance_data_local_var->symbol_coinapi = symbol_coinapi;
    balance_data_local_var->balance = balance;
    balance_data_local_var->available = available;
    balance_data_local_var->locked = locked;
    balance_data_local_var->update_origin = update_origin;

    return balance_data_local_var;
}


void balance_data_free(balance_data_t *balance_data) {
    if(NULL == balance_data){
        return ;
    }
    listEntry_t *listEntry;
    free(balance_data->id);
    free(balance_data->symbol_exchange);
    free(balance_data->symbol_coinapi);
    free(balance_data);
}

cJSON *balance_data_convertToJSON(balance_data_t *balance_data) {
    cJSON *item = cJSON_CreateObject();

    // balance_data->id
    if(balance_data->id) { 
    if(cJSON_AddStringToObject(item, "id", balance_data->id) == NULL) {
    goto fail; //String
    }
     } 


    // balance_data->symbol_exchange
    if(balance_data->symbol_exchange) { 
    if(cJSON_AddStringToObject(item, "symbol_exchange", balance_data->symbol_exchange) == NULL) {
    goto fail; //String
    }
     } 


    // balance_data->symbol_coinapi
    if(balance_data->symbol_coinapi) { 
    if(cJSON_AddStringToObject(item, "symbol_coinapi", balance_data->symbol_coinapi) == NULL) {
    goto fail; //String
    }
     } 


    // balance_data->balance
    if(balance_data->balance) { 
    if(cJSON_AddNumberToObject(item, "balance", balance_data->balance) == NULL) {
    goto fail; //Numeric
    }
     } 


    // balance_data->available
    if(balance_data->available) { 
    if(cJSON_AddNumberToObject(item, "available", balance_data->available) == NULL) {
    goto fail; //Numeric
    }
     } 


    // balance_data->locked
    if(balance_data->locked) { 
    if(cJSON_AddNumberToObject(item, "locked", balance_data->locked) == NULL) {
    goto fail; //Numeric
    }
     } 


    // balance_data->update_origin
    
    if(cJSON_AddStringToObject(item, "update_origin", update_originbalance_data_ToString(balance_data->update_origin)) == NULL)
    {
    goto fail; //Enum
    }
    

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

balance_data_t *balance_data_parseFromJSON(cJSON *balance_dataJSON){

    balance_data_t *balance_data_local_var = NULL;

    // balance_data->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(balance_dataJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // balance_data->symbol_exchange
    cJSON *symbol_exchange = cJSON_GetObjectItemCaseSensitive(balance_dataJSON, "symbol_exchange");
    if (symbol_exchange) { 
    if(!cJSON_IsString(symbol_exchange))
    {
    goto end; //String
    }
    }

    // balance_data->symbol_coinapi
    cJSON *symbol_coinapi = cJSON_GetObjectItemCaseSensitive(balance_dataJSON, "symbol_coinapi");
    if (symbol_coinapi) { 
    if(!cJSON_IsString(symbol_coinapi))
    {
    goto end; //String
    }
    }

    // balance_data->balance
    cJSON *balance = cJSON_GetObjectItemCaseSensitive(balance_dataJSON, "balance");
    if (balance) { 
    if(!cJSON_IsNumber(balance))
    {
    goto end; //Numeric
    }
    }

    // balance_data->available
    cJSON *available = cJSON_GetObjectItemCaseSensitive(balance_dataJSON, "available");
    if (available) { 
    if(!cJSON_IsNumber(available))
    {
    goto end; //Numeric
    }
    }

    // balance_data->locked
    cJSON *locked = cJSON_GetObjectItemCaseSensitive(balance_dataJSON, "locked");
    if (locked) { 
    if(!cJSON_IsNumber(locked))
    {
    goto end; //Numeric
    }
    }

    // balance_data->update_origin
    cJSON *update_origin = cJSON_GetObjectItemCaseSensitive(balance_dataJSON, "update_origin");
    oms___rest_api_balance_data_UPDATEORIGIN_e update_originVariable;
    if (update_origin) { 
    if(!cJSON_IsString(update_origin))
    {
    goto end; //Enum
    }
    update_originVariable = update_originbalance_data_FromString(update_origin->valuestring);
    }


    balance_data_local_var = balance_data_create (
        id ? strdup(id->valuestring) : NULL,
        symbol_exchange ? strdup(symbol_exchange->valuestring) : NULL,
        symbol_coinapi ? strdup(symbol_coinapi->valuestring) : NULL,
        balance ? balance->valuedouble : 0,
        available ? available->valuedouble : 0,
        locked ? locked->valuedouble : 0,
        update_origin ? update_originVariable : -1
        );

    return balance_data_local_var;
end:
    return NULL;

}
