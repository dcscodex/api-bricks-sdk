#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "messages_info.h"



messages_info_t *messages_info_create(
    char *type,
    char *exchange_id,
    char *error_message
    ) {
    messages_info_t *messages_info_local_var = malloc(sizeof(messages_info_t));
    if (!messages_info_local_var) {
        return NULL;
    }
    messages_info_local_var->type = type;
    messages_info_local_var->exchange_id = exchange_id;
    messages_info_local_var->error_message = error_message;

    return messages_info_local_var;
}


void messages_info_free(messages_info_t *messages_info) {
    if(NULL == messages_info){
        return ;
    }
    listEntry_t *listEntry;
    free(messages_info->type);
    free(messages_info->exchange_id);
    free(messages_info->error_message);
    free(messages_info);
}

cJSON *messages_info_convertToJSON(messages_info_t *messages_info) {
    cJSON *item = cJSON_CreateObject();

    // messages_info->type
    if(messages_info->type) { 
    if(cJSON_AddStringToObject(item, "type", messages_info->type) == NULL) {
    goto fail; //String
    }
     } 


    // messages_info->exchange_id
    if(messages_info->exchange_id) { 
    if(cJSON_AddStringToObject(item, "exchange_id", messages_info->exchange_id) == NULL) {
    goto fail; //String
    }
     } 


    // messages_info->error_message
    if(messages_info->error_message) { 
    if(cJSON_AddStringToObject(item, "error_message", messages_info->error_message) == NULL) {
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

messages_info_t *messages_info_parseFromJSON(cJSON *messages_infoJSON){

    messages_info_t *messages_info_local_var = NULL;

    // messages_info->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(messages_infoJSON, "type");
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }
    }

    // messages_info->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(messages_infoJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }

    // messages_info->error_message
    cJSON *error_message = cJSON_GetObjectItemCaseSensitive(messages_infoJSON, "error_message");
    if (error_message) { 
    if(!cJSON_IsString(error_message))
    {
    goto end; //String
    }
    }


    messages_info_local_var = messages_info_create (
        type ? strdup(type->valuestring) : NULL,
        exchange_id ? strdup(exchange_id->valuestring) : NULL,
        error_message ? strdup(error_message->valuestring) : NULL
        );

    return messages_info_local_var;
end:
    return NULL;

}
