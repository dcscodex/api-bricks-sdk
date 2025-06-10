#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_metric_info.h"



static v1_metric_info_t *v1_metric_info_create_internal(
    char *metric_id,
    char *description,
    char *source_id
    ) {
    v1_metric_info_t *v1_metric_info_local_var = malloc(sizeof(v1_metric_info_t));
    if (!v1_metric_info_local_var) {
        return NULL;
    }
    v1_metric_info_local_var->metric_id = metric_id;
    v1_metric_info_local_var->description = description;
    v1_metric_info_local_var->source_id = source_id;

    v1_metric_info_local_var->_library_owned = 1;
    return v1_metric_info_local_var;
}

__attribute__((deprecated)) v1_metric_info_t *v1_metric_info_create(
    char *metric_id,
    char *description,
    char *source_id
    ) {
    return v1_metric_info_create_internal (
        metric_id,
        description,
        source_id
        );
}

void v1_metric_info_free(v1_metric_info_t *v1_metric_info) {
    if(NULL == v1_metric_info){
        return ;
    }
    if(v1_metric_info->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_metric_info_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_metric_info->metric_id) {
        free(v1_metric_info->metric_id);
        v1_metric_info->metric_id = NULL;
    }
    if (v1_metric_info->description) {
        free(v1_metric_info->description);
        v1_metric_info->description = NULL;
    }
    if (v1_metric_info->source_id) {
        free(v1_metric_info->source_id);
        v1_metric_info->source_id = NULL;
    }
    free(v1_metric_info);
}

cJSON *v1_metric_info_convertToJSON(v1_metric_info_t *v1_metric_info) {
    cJSON *item = cJSON_CreateObject();

    // v1_metric_info->metric_id
    if(v1_metric_info->metric_id) {
    if(cJSON_AddStringToObject(item, "metric_id", v1_metric_info->metric_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_metric_info->description
    if(v1_metric_info->description) {
    if(cJSON_AddStringToObject(item, "description", v1_metric_info->description) == NULL) {
    goto fail; //String
    }
    }


    // v1_metric_info->source_id
    if(v1_metric_info->source_id) {
    if(cJSON_AddStringToObject(item, "source_id", v1_metric_info->source_id) == NULL) {
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

v1_metric_info_t *v1_metric_info_parseFromJSON(cJSON *v1_metric_infoJSON){

    v1_metric_info_t *v1_metric_info_local_var = NULL;

    // v1_metric_info->metric_id
    cJSON *metric_id = cJSON_GetObjectItemCaseSensitive(v1_metric_infoJSON, "metric_id");
    if (cJSON_IsNull(metric_id)) {
        metric_id = NULL;
    }
    if (metric_id) { 
    if(!cJSON_IsString(metric_id) && !cJSON_IsNull(metric_id))
    {
    goto end; //String
    }
    }

    // v1_metric_info->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(v1_metric_infoJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // v1_metric_info->source_id
    cJSON *source_id = cJSON_GetObjectItemCaseSensitive(v1_metric_infoJSON, "source_id");
    if (cJSON_IsNull(source_id)) {
        source_id = NULL;
    }
    if (source_id) { 
    if(!cJSON_IsString(source_id) && !cJSON_IsNull(source_id))
    {
    goto end; //String
    }
    }


    v1_metric_info_local_var = v1_metric_info_create_internal (
        metric_id && !cJSON_IsNull(metric_id) ? strdup(metric_id->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        source_id && !cJSON_IsNull(source_id) ? strdup(source_id->valuestring) : NULL
        );

    return v1_metric_info_local_var;
end:
    return NULL;

}
