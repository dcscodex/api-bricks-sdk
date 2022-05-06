#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "update_account.h"



update_account_t *update_account_create(
    char *exchange_id,
    list_t *parameters
    ) {
    update_account_t *update_account_local_var = malloc(sizeof(update_account_t));
    if (!update_account_local_var) {
        return NULL;
    }
    update_account_local_var->exchange_id = exchange_id;
    update_account_local_var->parameters = parameters;

    return update_account_local_var;
}


void update_account_free(update_account_t *update_account) {
    if(NULL == update_account){
        return ;
    }
    listEntry_t *listEntry;
    if (update_account->exchange_id) {
        free(update_account->exchange_id);
        update_account->exchange_id = NULL;
    }
    if (update_account->parameters) {
        list_ForEach(listEntry, update_account->parameters) {
            key_value_free(listEntry->data);
        }
        list_freeList(update_account->parameters);
        update_account->parameters = NULL;
    }
    free(update_account);
}

cJSON *update_account_convertToJSON(update_account_t *update_account) {
    cJSON *item = cJSON_CreateObject();

    // update_account->exchange_id
    if(update_account->exchange_id) { 
    if(cJSON_AddStringToObject(item, "exchange_id", update_account->exchange_id) == NULL) {
    goto fail; //String
    }
     } 


    // update_account->parameters
    if(update_account->parameters) { 
    cJSON *parameters = cJSON_AddArrayToObject(item, "parameters");
    if(parameters == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *parametersListEntry;
    if (update_account->parameters) {
    list_ForEach(parametersListEntry, update_account->parameters) {
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

update_account_t *update_account_parseFromJSON(cJSON *update_accountJSON){

    update_account_t *update_account_local_var = NULL;

    // update_account->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(update_accountJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }

    // update_account->parameters
    cJSON *parameters = cJSON_GetObjectItemCaseSensitive(update_accountJSON, "parameters");
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


    update_account_local_var = update_account_create (
        exchange_id ? strdup(exchange_id->valuestring) : NULL,
        parameters ? parametersList : NULL
        );

    return update_account_local_var;
end:
    return NULL;

}
