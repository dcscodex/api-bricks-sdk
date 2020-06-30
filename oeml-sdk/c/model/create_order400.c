#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "create_order400.h"



create_order400_t *create_order400_create(
    char *type,
    char *title,
    double status,
    char *trace_id,
    char *errors
    ) {
    create_order400_t *create_order400_local_var = malloc(sizeof(create_order400_t));
    if (!create_order400_local_var) {
        return NULL;
    }
    create_order400_local_var->type = type;
    create_order400_local_var->title = title;
    create_order400_local_var->status = status;
    create_order400_local_var->trace_id = trace_id;
    create_order400_local_var->errors = errors;

    return create_order400_local_var;
}


void create_order400_free(create_order400_t *create_order400) {
    if(NULL == create_order400){
        return ;
    }
    listEntry_t *listEntry;
    free(create_order400->type);
    free(create_order400->title);
    free(create_order400->trace_id);
    free(create_order400->errors);
    free(create_order400);
}

cJSON *create_order400_convertToJSON(create_order400_t *create_order400) {
    cJSON *item = cJSON_CreateObject();

    // create_order400->type
    if(create_order400->type) { 
    if(cJSON_AddStringToObject(item, "type", create_order400->type) == NULL) {
    goto fail; //String
    }
     } 


    // create_order400->title
    if(create_order400->title) { 
    if(cJSON_AddStringToObject(item, "title", create_order400->title) == NULL) {
    goto fail; //String
    }
     } 


    // create_order400->status
    if(create_order400->status) { 
    if(cJSON_AddNumberToObject(item, "status", create_order400->status) == NULL) {
    goto fail; //Numeric
    }
     } 


    // create_order400->trace_id
    if(create_order400->trace_id) { 
    if(cJSON_AddStringToObject(item, "traceId", create_order400->trace_id) == NULL) {
    goto fail; //String
    }
     } 


    // create_order400->errors
    if(create_order400->errors) { 
    if(cJSON_AddStringToObject(item, "errors", create_order400->errors) == NULL) {
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

create_order400_t *create_order400_parseFromJSON(cJSON *create_order400JSON){

    create_order400_t *create_order400_local_var = NULL;

    // create_order400->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(create_order400JSON, "type");
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }
    }

    // create_order400->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(create_order400JSON, "title");
    if (title) { 
    if(!cJSON_IsString(title))
    {
    goto end; //String
    }
    }

    // create_order400->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(create_order400JSON, "status");
    if (status) { 
    if(!cJSON_IsNumber(status))
    {
    goto end; //Numeric
    }
    }

    // create_order400->trace_id
    cJSON *trace_id = cJSON_GetObjectItemCaseSensitive(create_order400JSON, "traceId");
    if (trace_id) { 
    if(!cJSON_IsString(trace_id))
    {
    goto end; //String
    }
    }

    // create_order400->errors
    cJSON *errors = cJSON_GetObjectItemCaseSensitive(create_order400JSON, "errors");
    if (errors) { 
    if(!cJSON_IsString(errors))
    {
    goto end; //String
    }
    }


    create_order400_local_var = create_order400_create (
        type ? strdup(type->valuestring) : NULL,
        title ? strdup(title->valuestring) : NULL,
        status ? status->valuedouble : 0,
        trace_id ? strdup(trace_id->valuestring) : NULL,
        errors ? strdup(errors->valuestring) : NULL
        );

    return create_order400_local_var;
end:
    return NULL;

}
