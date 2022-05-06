#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "exchange_login_require.h"



exchange_login_require_t *exchange_login_require_create(
    char *exchange_id,
    char *location_id,
    list_t *required_parameters
    ) {
    exchange_login_require_t *exchange_login_require_local_var = malloc(sizeof(exchange_login_require_t));
    if (!exchange_login_require_local_var) {
        return NULL;
    }
    exchange_login_require_local_var->exchange_id = exchange_id;
    exchange_login_require_local_var->location_id = location_id;
    exchange_login_require_local_var->required_parameters = required_parameters;

    return exchange_login_require_local_var;
}


void exchange_login_require_free(exchange_login_require_t *exchange_login_require) {
    if(NULL == exchange_login_require){
        return ;
    }
    listEntry_t *listEntry;
    if (exchange_login_require->exchange_id) {
        free(exchange_login_require->exchange_id);
        exchange_login_require->exchange_id = NULL;
    }
    if (exchange_login_require->location_id) {
        free(exchange_login_require->location_id);
        exchange_login_require->location_id = NULL;
    }
    if (exchange_login_require->required_parameters) {
        list_ForEach(listEntry, exchange_login_require->required_parameters) {
            free(listEntry->data);
        }
        list_freeList(exchange_login_require->required_parameters);
        exchange_login_require->required_parameters = NULL;
    }
    free(exchange_login_require);
}

cJSON *exchange_login_require_convertToJSON(exchange_login_require_t *exchange_login_require) {
    cJSON *item = cJSON_CreateObject();

    // exchange_login_require->exchange_id
    if(exchange_login_require->exchange_id) { 
    if(cJSON_AddStringToObject(item, "exchange_id", exchange_login_require->exchange_id) == NULL) {
    goto fail; //String
    }
     } 


    // exchange_login_require->location_id
    if(exchange_login_require->location_id) { 
    if(cJSON_AddStringToObject(item, "location_id", exchange_login_require->location_id) == NULL) {
    goto fail; //String
    }
     } 


    // exchange_login_require->required_parameters
    if(exchange_login_require->required_parameters) { 
    cJSON *required_parameters = cJSON_AddArrayToObject(item, "required_parameters");
    if(required_parameters == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *required_parametersListEntry;
    list_ForEach(required_parametersListEntry, exchange_login_require->required_parameters) {
    if(cJSON_AddStringToObject(required_parameters, "", (char*)required_parametersListEntry->data) == NULL)
    {
        goto fail;
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

exchange_login_require_t *exchange_login_require_parseFromJSON(cJSON *exchange_login_requireJSON){

    exchange_login_require_t *exchange_login_require_local_var = NULL;

    // exchange_login_require->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(exchange_login_requireJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }

    // exchange_login_require->location_id
    cJSON *location_id = cJSON_GetObjectItemCaseSensitive(exchange_login_requireJSON, "location_id");
    if (location_id) { 
    if(!cJSON_IsString(location_id))
    {
    goto end; //String
    }
    }

    // exchange_login_require->required_parameters
    cJSON *required_parameters = cJSON_GetObjectItemCaseSensitive(exchange_login_requireJSON, "required_parameters");
    list_t *required_parametersList;
    if (required_parameters) { 
    cJSON *required_parameters_local;
    if(!cJSON_IsArray(required_parameters)) {
        goto end;//primitive container
    }
    required_parametersList = list_createList();

    cJSON_ArrayForEach(required_parameters_local, required_parameters)
    {
        if(!cJSON_IsString(required_parameters_local))
        {
            goto end;
        }
        list_addElement(required_parametersList , strdup(required_parameters_local->valuestring));
    }
    }


    exchange_login_require_local_var = exchange_login_require_create (
        exchange_id ? strdup(exchange_id->valuestring) : NULL,
        location_id ? strdup(location_id->valuestring) : NULL,
        required_parameters ? required_parametersList : NULL
        );

    return exchange_login_require_local_var;
end:
    return NULL;

}
