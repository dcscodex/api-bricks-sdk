#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "account_info.h"



account_info_t *account_info_create(
    char *exchange_id
    ) {
    account_info_t *account_info_local_var = malloc(sizeof(account_info_t));
    if (!account_info_local_var) {
        return NULL;
    }
    account_info_local_var->exchange_id = exchange_id;

    return account_info_local_var;
}


void account_info_free(account_info_t *account_info) {
    if(NULL == account_info){
        return ;
    }
    listEntry_t *listEntry;
    if (account_info->exchange_id) {
        free(account_info->exchange_id);
        account_info->exchange_id = NULL;
    }
    free(account_info);
}

cJSON *account_info_convertToJSON(account_info_t *account_info) {
    cJSON *item = cJSON_CreateObject();

    // account_info->exchange_id
    if(account_info->exchange_id) { 
    if(cJSON_AddStringToObject(item, "exchange_id", account_info->exchange_id) == NULL) {
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

account_info_t *account_info_parseFromJSON(cJSON *account_infoJSON){

    account_info_t *account_info_local_var = NULL;

    // account_info->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(account_infoJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }


    account_info_local_var = account_info_create (
        exchange_id ? strdup(exchange_id->valuestring) : NULL
        );

    return account_info_local_var;
end:
    return NULL;

}
