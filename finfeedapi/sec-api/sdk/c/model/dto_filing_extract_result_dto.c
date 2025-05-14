#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "dto_filing_extract_result_dto.h"



static dto_filing_extract_result_dto_t *dto_filing_extract_result_dto_create_internal(
    char *accession_number,
    char *form_type,
    list_t *items
    ) {
    dto_filing_extract_result_dto_t *dto_filing_extract_result_dto_local_var = malloc(sizeof(dto_filing_extract_result_dto_t));
    if (!dto_filing_extract_result_dto_local_var) {
        return NULL;
    }
    dto_filing_extract_result_dto_local_var->accession_number = accession_number;
    dto_filing_extract_result_dto_local_var->form_type = form_type;
    dto_filing_extract_result_dto_local_var->items = items;

    dto_filing_extract_result_dto_local_var->_library_owned = 1;
    return dto_filing_extract_result_dto_local_var;
}

__attribute__((deprecated)) dto_filing_extract_result_dto_t *dto_filing_extract_result_dto_create(
    char *accession_number,
    char *form_type,
    list_t *items
    ) {
    return dto_filing_extract_result_dto_create_internal (
        accession_number,
        form_type,
        items
        );
}

void dto_filing_extract_result_dto_free(dto_filing_extract_result_dto_t *dto_filing_extract_result_dto) {
    if(NULL == dto_filing_extract_result_dto){
        return ;
    }
    if(dto_filing_extract_result_dto->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "dto_filing_extract_result_dto_free");
        return ;
    }
    listEntry_t *listEntry;
    if (dto_filing_extract_result_dto->accession_number) {
        free(dto_filing_extract_result_dto->accession_number);
        dto_filing_extract_result_dto->accession_number = NULL;
    }
    if (dto_filing_extract_result_dto->form_type) {
        free(dto_filing_extract_result_dto->form_type);
        dto_filing_extract_result_dto->form_type = NULL;
    }
    if (dto_filing_extract_result_dto->items) {
        list_ForEach(listEntry, dto_filing_extract_result_dto->items) {
            dto_filing_item_dto_free(listEntry->data);
        }
        list_freeList(dto_filing_extract_result_dto->items);
        dto_filing_extract_result_dto->items = NULL;
    }
    free(dto_filing_extract_result_dto);
}

cJSON *dto_filing_extract_result_dto_convertToJSON(dto_filing_extract_result_dto_t *dto_filing_extract_result_dto) {
    cJSON *item = cJSON_CreateObject();

    // dto_filing_extract_result_dto->accession_number
    if(dto_filing_extract_result_dto->accession_number) {
    if(cJSON_AddStringToObject(item, "accession_number", dto_filing_extract_result_dto->accession_number) == NULL) {
    goto fail; //String
    }
    }


    // dto_filing_extract_result_dto->form_type
    if(dto_filing_extract_result_dto->form_type) {
    if(cJSON_AddStringToObject(item, "form_type", dto_filing_extract_result_dto->form_type) == NULL) {
    goto fail; //String
    }
    }


    // dto_filing_extract_result_dto->items
    if(dto_filing_extract_result_dto->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (dto_filing_extract_result_dto->items) {
    list_ForEach(itemsListEntry, dto_filing_extract_result_dto->items) {
    cJSON *itemLocal = dto_filing_item_dto_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
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

dto_filing_extract_result_dto_t *dto_filing_extract_result_dto_parseFromJSON(cJSON *dto_filing_extract_result_dtoJSON){

    dto_filing_extract_result_dto_t *dto_filing_extract_result_dto_local_var = NULL;

    // define the local list for dto_filing_extract_result_dto->items
    list_t *itemsList = NULL;

    // dto_filing_extract_result_dto->accession_number
    cJSON *accession_number = cJSON_GetObjectItemCaseSensitive(dto_filing_extract_result_dtoJSON, "accession_number");
    if (cJSON_IsNull(accession_number)) {
        accession_number = NULL;
    }
    if (accession_number) { 
    if(!cJSON_IsString(accession_number) && !cJSON_IsNull(accession_number))
    {
    goto end; //String
    }
    }

    // dto_filing_extract_result_dto->form_type
    cJSON *form_type = cJSON_GetObjectItemCaseSensitive(dto_filing_extract_result_dtoJSON, "form_type");
    if (cJSON_IsNull(form_type)) {
        form_type = NULL;
    }
    if (form_type) { 
    if(!cJSON_IsString(form_type) && !cJSON_IsNull(form_type))
    {
    goto end; //String
    }
    }

    // dto_filing_extract_result_dto->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(dto_filing_extract_result_dtoJSON, "items");
    if (cJSON_IsNull(items)) {
        items = NULL;
    }
    if (items) { 
    cJSON *items_local_nonprimitive = NULL;
    if(!cJSON_IsArray(items)){
        goto end; //nonprimitive container
    }

    itemsList = list_createList();

    cJSON_ArrayForEach(items_local_nonprimitive,items )
    {
        if(!cJSON_IsObject(items_local_nonprimitive)){
            goto end;
        }
        dto_filing_item_dto_t *itemsItem = dto_filing_item_dto_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }


    dto_filing_extract_result_dto_local_var = dto_filing_extract_result_dto_create_internal (
        accession_number && !cJSON_IsNull(accession_number) ? strdup(accession_number->valuestring) : NULL,
        form_type && !cJSON_IsNull(form_type) ? strdup(form_type->valuestring) : NULL,
        items ? itemsList : NULL
        );

    return dto_filing_extract_result_dto_local_var;
end:
    if (itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itemsList) {
            dto_filing_item_dto_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    return NULL;

}
