#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "mvc_validation_problem_details.h"



static mvc_validation_problem_details_t *mvc_validation_problem_details_create_internal(
    char *type,
    char *title,
    int status,
    char *detail,
    char *instance,
    list_t* errors
    ) {
    mvc_validation_problem_details_t *mvc_validation_problem_details_local_var = malloc(sizeof(mvc_validation_problem_details_t));
    if (!mvc_validation_problem_details_local_var) {
        return NULL;
    }
    mvc_validation_problem_details_local_var->type = type;
    mvc_validation_problem_details_local_var->title = title;
    mvc_validation_problem_details_local_var->status = status;
    mvc_validation_problem_details_local_var->detail = detail;
    mvc_validation_problem_details_local_var->instance = instance;
    mvc_validation_problem_details_local_var->errors = errors;

    mvc_validation_problem_details_local_var->_library_owned = 1;
    return mvc_validation_problem_details_local_var;
}

__attribute__((deprecated)) mvc_validation_problem_details_t *mvc_validation_problem_details_create(
    char *type,
    char *title,
    int status,
    char *detail,
    char *instance,
    list_t* errors
    ) {
    return mvc_validation_problem_details_create_internal (
        type,
        title,
        status,
        detail,
        instance,
        errors
        );
}

void mvc_validation_problem_details_free(mvc_validation_problem_details_t *mvc_validation_problem_details) {
    if(NULL == mvc_validation_problem_details){
        return ;
    }
    if(mvc_validation_problem_details->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "mvc_validation_problem_details_free");
        return ;
    }
    listEntry_t *listEntry;
    if (mvc_validation_problem_details->type) {
        free(mvc_validation_problem_details->type);
        mvc_validation_problem_details->type = NULL;
    }
    if (mvc_validation_problem_details->title) {
        free(mvc_validation_problem_details->title);
        mvc_validation_problem_details->title = NULL;
    }
    if (mvc_validation_problem_details->detail) {
        free(mvc_validation_problem_details->detail);
        mvc_validation_problem_details->detail = NULL;
    }
    if (mvc_validation_problem_details->instance) {
        free(mvc_validation_problem_details->instance);
        mvc_validation_problem_details->instance = NULL;
    }
    if (mvc_validation_problem_details->errors) {
        list_ForEach(listEntry, mvc_validation_problem_details->errors) {
            keyValuePair_t *localKeyValue = listEntry->data;
            free (localKeyValue->key);
            free (localKeyValue->value);
            keyValuePair_free(localKeyValue);
        }
        list_freeList(mvc_validation_problem_details->errors);
        mvc_validation_problem_details->errors = NULL;
    }
    free(mvc_validation_problem_details);
}

cJSON *mvc_validation_problem_details_convertToJSON(mvc_validation_problem_details_t *mvc_validation_problem_details) {
    cJSON *item = cJSON_CreateObject();

    // mvc_validation_problem_details->type
    if(mvc_validation_problem_details->type) {
    if(cJSON_AddStringToObject(item, "type", mvc_validation_problem_details->type) == NULL) {
    goto fail; //String
    }
    }


    // mvc_validation_problem_details->title
    if(mvc_validation_problem_details->title) {
    if(cJSON_AddStringToObject(item, "title", mvc_validation_problem_details->title) == NULL) {
    goto fail; //String
    }
    }


    // mvc_validation_problem_details->status
    if(mvc_validation_problem_details->status) {
    if(cJSON_AddNumberToObject(item, "status", mvc_validation_problem_details->status) == NULL) {
    goto fail; //Numeric
    }
    }


    // mvc_validation_problem_details->detail
    if(mvc_validation_problem_details->detail) {
    if(cJSON_AddStringToObject(item, "detail", mvc_validation_problem_details->detail) == NULL) {
    goto fail; //String
    }
    }


    // mvc_validation_problem_details->instance
    if(mvc_validation_problem_details->instance) {
    if(cJSON_AddStringToObject(item, "instance", mvc_validation_problem_details->instance) == NULL) {
    goto fail; //String
    }
    }


    // mvc_validation_problem_details->errors
    if(mvc_validation_problem_details->errors) {
    cJSON *errors = cJSON_AddObjectToObject(item, "errors");
    if(errors == NULL) {
        goto fail; //primitive map container
    }
    cJSON *localMapObject = errors;
    listEntry_t *errorsListEntry;
    if (mvc_validation_problem_details->errors) {
    list_ForEach(errorsListEntry, mvc_validation_problem_details->errors) {
        keyValuePair_t *localKeyValue = errorsListEntry->data;
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

mvc_validation_problem_details_t *mvc_validation_problem_details_parseFromJSON(cJSON *mvc_validation_problem_detailsJSON){

    mvc_validation_problem_details_t *mvc_validation_problem_details_local_var = NULL;

    // define the local map for mvc_validation_problem_details->errors
    list_t *errorsList = NULL;

    // mvc_validation_problem_details->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(mvc_validation_problem_detailsJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // mvc_validation_problem_details->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(mvc_validation_problem_detailsJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // mvc_validation_problem_details->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(mvc_validation_problem_detailsJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    if (status) { 
    if(!cJSON_IsNumber(status))
    {
    goto end; //Numeric
    }
    }

    // mvc_validation_problem_details->detail
    cJSON *detail = cJSON_GetObjectItemCaseSensitive(mvc_validation_problem_detailsJSON, "detail");
    if (cJSON_IsNull(detail)) {
        detail = NULL;
    }
    if (detail) { 
    if(!cJSON_IsString(detail) && !cJSON_IsNull(detail))
    {
    goto end; //String
    }
    }

    // mvc_validation_problem_details->instance
    cJSON *instance = cJSON_GetObjectItemCaseSensitive(mvc_validation_problem_detailsJSON, "instance");
    if (cJSON_IsNull(instance)) {
        instance = NULL;
    }
    if (instance) { 
    if(!cJSON_IsString(instance) && !cJSON_IsNull(instance))
    {
    goto end; //String
    }
    }

    // mvc_validation_problem_details->errors
    cJSON *errors = cJSON_GetObjectItemCaseSensitive(mvc_validation_problem_detailsJSON, "errors");
    if (cJSON_IsNull(errors)) {
        errors = NULL;
    }
    if (errors) { 
    cJSON *errors_local_map = NULL;
    if(!cJSON_IsObject(errors) && !cJSON_IsNull(errors))
    {
        goto end;//primitive map container
    }
    if(cJSON_IsObject(errors))
    {
        errorsList = list_createList();
        keyValuePair_t *localMapKeyPair;
        cJSON_ArrayForEach(errors_local_map, errors)
        {
            cJSON *localMapObject = errors_local_map;
            list_addElement(errorsList , localMapKeyPair);
        }
    }
    }


    mvc_validation_problem_details_local_var = mvc_validation_problem_details_create_internal (
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        status ? status->valuedouble : 0,
        detail && !cJSON_IsNull(detail) ? strdup(detail->valuestring) : NULL,
        instance && !cJSON_IsNull(instance) ? strdup(instance->valuestring) : NULL,
        errors ? errorsList : NULL
        );

    return mvc_validation_problem_details_local_var;
end:
    if (errorsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, errorsList) {
            keyValuePair_t *localKeyValue = listEntry->data;
            free(localKeyValue->key);
            localKeyValue->key = NULL;
            keyValuePair_free(localKeyValue);
            localKeyValue = NULL;
        }
        list_freeList(errorsList);
        errorsList = NULL;
    }
    return NULL;

}
