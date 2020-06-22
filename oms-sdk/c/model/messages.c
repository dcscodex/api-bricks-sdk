#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "messages.h"



messages_t *messages_create(
    char *type,
    char *exchange_id,
    char *message
    ) {
    messages_t *messages_local_var = malloc(sizeof(messages_t));
    if (!messages_local_var) {
        return NULL;
    }
    messages_local_var->type = type;
    messages_local_var->exchange_id = exchange_id;
    messages_local_var->message = message;

    return messages_local_var;
}


void messages_free(messages_t *messages) {
    if(NULL == messages){
        return ;
    }
    listEntry_t *listEntry;
    free(messages->type);
    free(messages->exchange_id);
    free(messages->message);
    free(messages);
}

cJSON *messages_convertToJSON(messages_t *messages) {
    cJSON *item = cJSON_CreateObject();

    // messages->type
    if(messages->type) { 
    if(cJSON_AddStringToObject(item, "type", messages->type) == NULL) {
    goto fail; //String
    }
     } 


    // messages->exchange_id
    if(messages->exchange_id) { 
    if(cJSON_AddStringToObject(item, "exchange_id", messages->exchange_id) == NULL) {
    goto fail; //String
    }
     } 


    // messages->message
    if(messages->message) { 
    if(cJSON_AddStringToObject(item, "message", messages->message) == NULL) {
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

messages_t *messages_parseFromJSON(cJSON *messagesJSON){

    messages_t *messages_local_var = NULL;

    // messages->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(messagesJSON, "type");
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }
    }

    // messages->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(messagesJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }

    // messages->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(messagesJSON, "message");
    if (message) { 
    if(!cJSON_IsString(message))
    {
    goto end; //String
    }
    }


    messages_local_var = messages_create (
        type ? strdup(type->valuestring) : NULL,
        exchange_id ? strdup(exchange_id->valuestring) : NULL,
        message ? strdup(message->valuestring) : NULL
        );

    return messages_local_var;
end:
    return NULL;

}
