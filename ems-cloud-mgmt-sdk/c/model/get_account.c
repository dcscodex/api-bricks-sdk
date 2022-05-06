#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "get_account.h"



get_account_t *get_account_create(
    char *exchange_id,
    list_t *parameters
    ) {
    get_account_t *get_account_local_var = malloc(sizeof(get_account_t));
    if (!get_account_local_var) {
        return NULL;
    }
    get_account_local_var->exchange_id = exchange_id;
    get_account_local_var->parameters = parameters;

    return get_account_local_var;
}


void get_account_free(get_account_t *get_account) {
    if(NULL == get_account){
        return ;
    }
    listEntry_t *listEntry;
    if (get_account->exchange_id) {
        free(get_account->exchange_id);
        get_account->exchange_id = NULL;
    }
    if (get_account->parameters) {
        list_ForEach(listEntry, get_account->parameters) {
            key_value_free(listEntry->data);
        }
        list_freeList(get_account->parameters);
        get_account->parameters = NULL;
    }
    free(get_account);
}

cJSON *get_account_convertToJSON(get_account_t *get_account) {
    cJSON *item = cJSON_CreateObject();

    // get_account->exchange_id
    if(get_account->exchange_id) { 
    if(cJSON_AddStringToObject(item, "exchange_id", get_account->exchange_id) == NULL) {
    goto fail; //String
    }
     } 


    // get_account->parameters
    if(get_account->parameters) { 
    cJSON *parameters = cJSON_AddArrayToObject(item, "parameters");
    if(parameters == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *parametersListEntry;
    if (get_account->parameters) {
    list_ForEach(parametersListEntry, get_account->parameters) {
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

get_account_t *get_account_parseFromJSON(cJSON *get_accountJSON){

    get_account_t *get_account_local_var = NULL;

    // get_account->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(get_accountJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }

    // get_account->parameters
    cJSON *parameters = cJSON_GetObjectItemCaseSensitive(get_accountJSON, "parameters");
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


    get_account_local_var = get_account_create (
        exchange_id ? strdup(exchange_id->valuestring) : NULL,
        parameters ? parametersList : NULL
        );

    return get_account_local_var;
end:
    return NULL;

}
