#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "account_data.h"



account_data_t *account_data_create(
    char *exchange_id,
    list_t *parameters
    ) {
    account_data_t *account_data_local_var = malloc(sizeof(account_data_t));
    if (!account_data_local_var) {
        return NULL;
    }
    account_data_local_var->exchange_id = exchange_id;
    account_data_local_var->parameters = parameters;

    return account_data_local_var;
}


void account_data_free(account_data_t *account_data) {
    if(NULL == account_data){
        return ;
    }
    listEntry_t *listEntry;
    if (account_data->exchange_id) {
        free(account_data->exchange_id);
        account_data->exchange_id = NULL;
    }
    if (account_data->parameters) {
        list_ForEach(listEntry, account_data->parameters) {
            key_value_free(listEntry->data);
        }
        list_freeList(account_data->parameters);
        account_data->parameters = NULL;
    }
    free(account_data);
}

cJSON *account_data_convertToJSON(account_data_t *account_data) {
    cJSON *item = cJSON_CreateObject();

    // account_data->exchange_id
    if(account_data->exchange_id) { 
    if(cJSON_AddStringToObject(item, "exchange_id", account_data->exchange_id) == NULL) {
    goto fail; //String
    }
     } 


    // account_data->parameters
    if(account_data->parameters) { 
    cJSON *parameters = cJSON_AddArrayToObject(item, "parameters");
    if(parameters == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *parametersListEntry;
    if (account_data->parameters) {
    list_ForEach(parametersListEntry, account_data->parameters) {
    cJSON *itemLocal = key_value_convertToJSON(parametersListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(parameters, itemLocal);
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

account_data_t *account_data_parseFromJSON(cJSON *account_dataJSON){

    account_data_t *account_data_local_var = NULL;

    // account_data->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(account_dataJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }

    // account_data->parameters
    cJSON *parameters = cJSON_GetObjectItemCaseSensitive(account_dataJSON, "parameters");
    list_t *parametersList;
    if (parameters) { 
    cJSON *parameters_local_nonprimitive;
    if(!cJSON_IsArray(parameters)){
        goto end; //nonprimitive container
    }

    parametersList = list_createList();

    cJSON_ArrayForEach(parameters_local_nonprimitive,parameters )
    {
        if(!cJSON_IsObject(parameters_local_nonprimitive)){
            goto end;
        }
        key_value_t *parametersItem = key_value_parseFromJSON(parameters_local_nonprimitive);

        list_addElement(parametersList, parametersItem);
    }
    }


    account_data_local_var = account_data_create (
        exchange_id ? strdup(exchange_id->valuestring) : NULL,
        parameters ? parametersList : NULL
        );

    return account_data_local_var;
end:
    return NULL;

}
