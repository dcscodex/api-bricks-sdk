#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "messages_ok.h"



messages_ok_t *messages_ok_create(
    char *type,
    char *exchange_id,
    char *message
    ) {
    messages_ok_t *messages_ok_local_var = malloc(sizeof(messages_ok_t));
    if (!messages_ok_local_var) {
        return NULL;
    }
    messages_ok_local_var->type = type;
    messages_ok_local_var->exchange_id = exchange_id;
    messages_ok_local_var->message = message;

    return messages_ok_local_var;
}


void messages_ok_free(messages_ok_t *messages_ok) {
    if(NULL == messages_ok){
        return ;
    }
    listEntry_t *listEntry;
    free(messages_ok->type);
    free(messages_ok->exchange_id);
    free(messages_ok->message);
    free(messages_ok);
}

cJSON *messages_ok_convertToJSON(messages_ok_t *messages_ok) {
    cJSON *item = cJSON_CreateObject();

    // messages_ok->type
    if(messages_ok->type) { 
    if(cJSON_AddStringToObject(item, "type", messages_ok->type) == NULL) {
    goto fail; //String
    }
     } 


    // messages_ok->exchange_id
    if(messages_ok->exchange_id) { 
    if(cJSON_AddStringToObject(item, "exchange_id", messages_ok->exchange_id) == NULL) {
    goto fail; //String
    }
     } 


    // messages_ok->message
    if(messages_ok->message) { 
    if(cJSON_AddStringToObject(item, "message", messages_ok->message) == NULL) {
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

messages_ok_t *messages_ok_parseFromJSON(cJSON *messages_okJSON){

    messages_ok_t *messages_ok_local_var = NULL;

    // messages_ok->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(messages_okJSON, "type");
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }
    }

    // messages_ok->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(messages_okJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }

    // messages_ok->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(messages_okJSON, "message");
    if (message) { 
    if(!cJSON_IsString(message))
    {
    goto end; //String
    }
    }


    messages_ok_local_var = messages_ok_create (
        type ? strdup(type->valuestring) : NULL,
        exchange_id ? strdup(exchange_id->valuestring) : NULL,
        message ? strdup(message->valuestring) : NULL
        );

    return messages_ok_local_var;
end:
    return NULL;

}
