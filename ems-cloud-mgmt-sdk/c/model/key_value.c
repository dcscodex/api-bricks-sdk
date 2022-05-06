#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "key_value.h"



key_value_t *key_value_create(
    char *key,
    char *value
    ) {
    key_value_t *key_value_local_var = malloc(sizeof(key_value_t));
    if (!key_value_local_var) {
        return NULL;
    }
    key_value_local_var->key = key;
    key_value_local_var->value = value;

    return key_value_local_var;
}


void key_value_free(key_value_t *key_value) {
    if(NULL == key_value){
        return ;
    }
    listEntry_t *listEntry;
    if (key_value->key) {
        free(key_value->key);
        key_value->key = NULL;
    }
    if (key_value->value) {
        free(key_value->value);
        key_value->value = NULL;
    }
    free(key_value);
}

cJSON *key_value_convertToJSON(key_value_t *key_value) {
    cJSON *item = cJSON_CreateObject();

    // key_value->key
    if(key_value->key) { 
    if(cJSON_AddStringToObject(item, "key", key_value->key) == NULL) {
    goto fail; //String
    }
     } 


    // key_value->value
    if(key_value->value) { 
    if(cJSON_AddStringToObject(item, "value", key_value->value) == NULL) {
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

key_value_t *key_value_parseFromJSON(cJSON *key_valueJSON){

    key_value_t *key_value_local_var = NULL;

    // key_value->key
    cJSON *key = cJSON_GetObjectItemCaseSensitive(key_valueJSON, "key");
    if (key) { 
    if(!cJSON_IsString(key))
    {
    goto end; //String
    }
    }

    // key_value->value
    cJSON *value = cJSON_GetObjectItemCaseSensitive(key_valueJSON, "value");
    if (value) { 
    if(!cJSON_IsString(value))
    {
    goto end; //String
    }
    }


    key_value_local_var = key_value_create (
        key ? strdup(key->valuestring) : NULL,
        value ? strdup(value->valuestring) : NULL
        );

    return key_value_local_var;
end:
    return NULL;

}
