#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "balance.h"



balance_t *balance_create(
    char *type,
    char *exchange_name,
    list_t *data
    ) {
    balance_t *balance_local_var = malloc(sizeof(balance_t));
    if (!balance_local_var) {
        return NULL;
    }
    balance_local_var->type = type;
    balance_local_var->exchange_name = exchange_name;
    balance_local_var->data = data;

    return balance_local_var;
}


void balance_free(balance_t *balance) {
    if(NULL == balance){
        return ;
    }
    listEntry_t *listEntry;
    free(balance->type);
    free(balance->exchange_name);
    list_ForEach(listEntry, balance->data) {
        balance_data_free(listEntry->data);
    }
    list_free(balance->data);
    free(balance);
}

cJSON *balance_convertToJSON(balance_t *balance) {
    cJSON *item = cJSON_CreateObject();

    // balance->type
    if(balance->type) { 
    if(cJSON_AddStringToObject(item, "type", balance->type) == NULL) {
    goto fail; //String
    }
     } 


    // balance->exchange_name
    if(balance->exchange_name) { 
    if(cJSON_AddStringToObject(item, "exchange_name", balance->exchange_name) == NULL) {
    goto fail; //String
    }
     } 


    // balance->data
    if(balance->data) { 
    cJSON *data = cJSON_AddArrayToObject(item, "data");
    if(data == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *dataListEntry;
    if (balance->data) {
    list_ForEach(dataListEntry, balance->data) {
    cJSON *itemLocal = balance_data_convertToJSON(dataListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(data, itemLocal);
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

balance_t *balance_parseFromJSON(cJSON *balanceJSON){

    balance_t *balance_local_var = NULL;

    // balance->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(balanceJSON, "type");
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }
    }

    // balance->exchange_name
    cJSON *exchange_name = cJSON_GetObjectItemCaseSensitive(balanceJSON, "exchange_name");
    if (exchange_name) { 
    if(!cJSON_IsString(exchange_name))
    {
    goto end; //String
    }
    }

    // balance->data
    cJSON *data = cJSON_GetObjectItemCaseSensitive(balanceJSON, "data");
    list_t *dataList;
    if (data) { 
    cJSON *data_local_nonprimitive;
    if(!cJSON_IsArray(data)){
        goto end; //nonprimitive container
    }

    dataList = list_create();

    cJSON_ArrayForEach(data_local_nonprimitive,data )
    {
        if(!cJSON_IsObject(data_local_nonprimitive)){
            goto end;
        }
        balance_data_t *dataItem = balance_data_parseFromJSON(data_local_nonprimitive);

        list_addElement(dataList, dataItem);
    }
    }


    balance_local_var = balance_create (
        type ? strdup(type->valuestring) : NULL,
        exchange_name ? strdup(exchange_name->valuestring) : NULL,
        data ? dataList : NULL
        );

    return balance_local_var;
end:
    return NULL;

}
