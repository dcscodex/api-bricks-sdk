#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "dto_filing_item_dto.h"



static dto_filing_item_dto_t *dto_filing_item_dto_create_internal(
    char *item_number,
    char *item_title,
    char *content
    ) {
    dto_filing_item_dto_t *dto_filing_item_dto_local_var = malloc(sizeof(dto_filing_item_dto_t));
    if (!dto_filing_item_dto_local_var) {
        return NULL;
    }
    dto_filing_item_dto_local_var->item_number = item_number;
    dto_filing_item_dto_local_var->item_title = item_title;
    dto_filing_item_dto_local_var->content = content;

    dto_filing_item_dto_local_var->_library_owned = 1;
    return dto_filing_item_dto_local_var;
}

__attribute__((deprecated)) dto_filing_item_dto_t *dto_filing_item_dto_create(
    char *item_number,
    char *item_title,
    char *content
    ) {
    return dto_filing_item_dto_create_internal (
        item_number,
        item_title,
        content
        );
}

void dto_filing_item_dto_free(dto_filing_item_dto_t *dto_filing_item_dto) {
    if(NULL == dto_filing_item_dto){
        return ;
    }
    if(dto_filing_item_dto->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "dto_filing_item_dto_free");
        return ;
    }
    listEntry_t *listEntry;
    if (dto_filing_item_dto->item_number) {
        free(dto_filing_item_dto->item_number);
        dto_filing_item_dto->item_number = NULL;
    }
    if (dto_filing_item_dto->item_title) {
        free(dto_filing_item_dto->item_title);
        dto_filing_item_dto->item_title = NULL;
    }
    if (dto_filing_item_dto->content) {
        free(dto_filing_item_dto->content);
        dto_filing_item_dto->content = NULL;
    }
    free(dto_filing_item_dto);
}

cJSON *dto_filing_item_dto_convertToJSON(dto_filing_item_dto_t *dto_filing_item_dto) {
    cJSON *item = cJSON_CreateObject();

    // dto_filing_item_dto->item_number
    if(dto_filing_item_dto->item_number) {
    if(cJSON_AddStringToObject(item, "item_number", dto_filing_item_dto->item_number) == NULL) {
    goto fail; //String
    }
    }


    // dto_filing_item_dto->item_title
    if(dto_filing_item_dto->item_title) {
    if(cJSON_AddStringToObject(item, "item_title", dto_filing_item_dto->item_title) == NULL) {
    goto fail; //String
    }
    }


    // dto_filing_item_dto->content
    if(dto_filing_item_dto->content) {
    if(cJSON_AddStringToObject(item, "content", dto_filing_item_dto->content) == NULL) {
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

dto_filing_item_dto_t *dto_filing_item_dto_parseFromJSON(cJSON *dto_filing_item_dtoJSON){

    dto_filing_item_dto_t *dto_filing_item_dto_local_var = NULL;

    // dto_filing_item_dto->item_number
    cJSON *item_number = cJSON_GetObjectItemCaseSensitive(dto_filing_item_dtoJSON, "item_number");
    if (cJSON_IsNull(item_number)) {
        item_number = NULL;
    }
    if (item_number) { 
    if(!cJSON_IsString(item_number) && !cJSON_IsNull(item_number))
    {
    goto end; //String
    }
    }

    // dto_filing_item_dto->item_title
    cJSON *item_title = cJSON_GetObjectItemCaseSensitive(dto_filing_item_dtoJSON, "item_title");
    if (cJSON_IsNull(item_title)) {
        item_title = NULL;
    }
    if (item_title) { 
    if(!cJSON_IsString(item_title) && !cJSON_IsNull(item_title))
    {
    goto end; //String
    }
    }

    // dto_filing_item_dto->content
    cJSON *content = cJSON_GetObjectItemCaseSensitive(dto_filing_item_dtoJSON, "content");
    if (cJSON_IsNull(content)) {
        content = NULL;
    }
    if (content) { 
    if(!cJSON_IsString(content) && !cJSON_IsNull(content))
    {
    goto end; //String
    }
    }


    dto_filing_item_dto_local_var = dto_filing_item_dto_create_internal (
        item_number && !cJSON_IsNull(item_number) ? strdup(item_number->valuestring) : NULL,
        item_title && !cJSON_IsNull(item_title) ? strdup(item_title->valuestring) : NULL,
        content && !cJSON_IsNull(content) ? strdup(content->valuestring) : NULL
        );

    return dto_filing_item_dto_local_var;
end:
    return NULL;

}
