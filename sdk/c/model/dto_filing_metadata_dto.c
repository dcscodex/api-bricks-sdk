#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "dto_filing_metadata_dto.h"



static dto_filing_metadata_dto_t *dto_filing_metadata_dto_create_internal(
    long cik,
    char *accession_number,
    char *filing_date,
    char *report_date,
    char *acceptance_date_time,
    char *act,
    char *form,
    char *file_number,
    char *film_number,
    char *items,
    char *core_type,
    int size,
    int is_xbrl,
    int is_inline_xbrl,
    char *primary_document,
    char *primary_doc_description,
    char *source_file
    ) {
    dto_filing_metadata_dto_t *dto_filing_metadata_dto_local_var = malloc(sizeof(dto_filing_metadata_dto_t));
    if (!dto_filing_metadata_dto_local_var) {
        return NULL;
    }
    dto_filing_metadata_dto_local_var->cik = cik;
    dto_filing_metadata_dto_local_var->accession_number = accession_number;
    dto_filing_metadata_dto_local_var->filing_date = filing_date;
    dto_filing_metadata_dto_local_var->report_date = report_date;
    dto_filing_metadata_dto_local_var->acceptance_date_time = acceptance_date_time;
    dto_filing_metadata_dto_local_var->act = act;
    dto_filing_metadata_dto_local_var->form = form;
    dto_filing_metadata_dto_local_var->file_number = file_number;
    dto_filing_metadata_dto_local_var->film_number = film_number;
    dto_filing_metadata_dto_local_var->items = items;
    dto_filing_metadata_dto_local_var->core_type = core_type;
    dto_filing_metadata_dto_local_var->size = size;
    dto_filing_metadata_dto_local_var->is_xbrl = is_xbrl;
    dto_filing_metadata_dto_local_var->is_inline_xbrl = is_inline_xbrl;
    dto_filing_metadata_dto_local_var->primary_document = primary_document;
    dto_filing_metadata_dto_local_var->primary_doc_description = primary_doc_description;
    dto_filing_metadata_dto_local_var->source_file = source_file;

    dto_filing_metadata_dto_local_var->_library_owned = 1;
    return dto_filing_metadata_dto_local_var;
}

__attribute__((deprecated)) dto_filing_metadata_dto_t *dto_filing_metadata_dto_create(
    long cik,
    char *accession_number,
    char *filing_date,
    char *report_date,
    char *acceptance_date_time,
    char *act,
    char *form,
    char *file_number,
    char *film_number,
    char *items,
    char *core_type,
    int size,
    int is_xbrl,
    int is_inline_xbrl,
    char *primary_document,
    char *primary_doc_description,
    char *source_file
    ) {
    return dto_filing_metadata_dto_create_internal (
        cik,
        accession_number,
        filing_date,
        report_date,
        acceptance_date_time,
        act,
        form,
        file_number,
        film_number,
        items,
        core_type,
        size,
        is_xbrl,
        is_inline_xbrl,
        primary_document,
        primary_doc_description,
        source_file
        );
}

void dto_filing_metadata_dto_free(dto_filing_metadata_dto_t *dto_filing_metadata_dto) {
    if(NULL == dto_filing_metadata_dto){
        return ;
    }
    if(dto_filing_metadata_dto->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "dto_filing_metadata_dto_free");
        return ;
    }
    listEntry_t *listEntry;
    if (dto_filing_metadata_dto->accession_number) {
        free(dto_filing_metadata_dto->accession_number);
        dto_filing_metadata_dto->accession_number = NULL;
    }
    if (dto_filing_metadata_dto->filing_date) {
        free(dto_filing_metadata_dto->filing_date);
        dto_filing_metadata_dto->filing_date = NULL;
    }
    if (dto_filing_metadata_dto->report_date) {
        free(dto_filing_metadata_dto->report_date);
        dto_filing_metadata_dto->report_date = NULL;
    }
    if (dto_filing_metadata_dto->acceptance_date_time) {
        free(dto_filing_metadata_dto->acceptance_date_time);
        dto_filing_metadata_dto->acceptance_date_time = NULL;
    }
    if (dto_filing_metadata_dto->act) {
        free(dto_filing_metadata_dto->act);
        dto_filing_metadata_dto->act = NULL;
    }
    if (dto_filing_metadata_dto->form) {
        free(dto_filing_metadata_dto->form);
        dto_filing_metadata_dto->form = NULL;
    }
    if (dto_filing_metadata_dto->file_number) {
        free(dto_filing_metadata_dto->file_number);
        dto_filing_metadata_dto->file_number = NULL;
    }
    if (dto_filing_metadata_dto->film_number) {
        free(dto_filing_metadata_dto->film_number);
        dto_filing_metadata_dto->film_number = NULL;
    }
    if (dto_filing_metadata_dto->items) {
        free(dto_filing_metadata_dto->items);
        dto_filing_metadata_dto->items = NULL;
    }
    if (dto_filing_metadata_dto->core_type) {
        free(dto_filing_metadata_dto->core_type);
        dto_filing_metadata_dto->core_type = NULL;
    }
    if (dto_filing_metadata_dto->primary_document) {
        free(dto_filing_metadata_dto->primary_document);
        dto_filing_metadata_dto->primary_document = NULL;
    }
    if (dto_filing_metadata_dto->primary_doc_description) {
        free(dto_filing_metadata_dto->primary_doc_description);
        dto_filing_metadata_dto->primary_doc_description = NULL;
    }
    if (dto_filing_metadata_dto->source_file) {
        free(dto_filing_metadata_dto->source_file);
        dto_filing_metadata_dto->source_file = NULL;
    }
    free(dto_filing_metadata_dto);
}

cJSON *dto_filing_metadata_dto_convertToJSON(dto_filing_metadata_dto_t *dto_filing_metadata_dto) {
    cJSON *item = cJSON_CreateObject();

    // dto_filing_metadata_dto->cik
    if(dto_filing_metadata_dto->cik) {
    if(cJSON_AddNumberToObject(item, "cik", dto_filing_metadata_dto->cik) == NULL) {
    goto fail; //Numeric
    }
    }


    // dto_filing_metadata_dto->accession_number
    if(dto_filing_metadata_dto->accession_number) {
    if(cJSON_AddStringToObject(item, "accession_number", dto_filing_metadata_dto->accession_number) == NULL) {
    goto fail; //String
    }
    }


    // dto_filing_metadata_dto->filing_date
    if(dto_filing_metadata_dto->filing_date) {
    if(cJSON_AddStringToObject(item, "filing_date", dto_filing_metadata_dto->filing_date) == NULL) {
    goto fail; //Date
    }
    }


    // dto_filing_metadata_dto->report_date
    if(dto_filing_metadata_dto->report_date) {
    if(cJSON_AddStringToObject(item, "report_date", dto_filing_metadata_dto->report_date) == NULL) {
    goto fail; //Date
    }
    }


    // dto_filing_metadata_dto->acceptance_date_time
    if(dto_filing_metadata_dto->acceptance_date_time) {
    if(cJSON_AddStringToObject(item, "acceptance_date_time", dto_filing_metadata_dto->acceptance_date_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dto_filing_metadata_dto->act
    if(dto_filing_metadata_dto->act) {
    if(cJSON_AddStringToObject(item, "act", dto_filing_metadata_dto->act) == NULL) {
    goto fail; //String
    }
    }


    // dto_filing_metadata_dto->form
    if(dto_filing_metadata_dto->form) {
    if(cJSON_AddStringToObject(item, "form", dto_filing_metadata_dto->form) == NULL) {
    goto fail; //String
    }
    }


    // dto_filing_metadata_dto->file_number
    if(dto_filing_metadata_dto->file_number) {
    if(cJSON_AddStringToObject(item, "file_number", dto_filing_metadata_dto->file_number) == NULL) {
    goto fail; //String
    }
    }


    // dto_filing_metadata_dto->film_number
    if(dto_filing_metadata_dto->film_number) {
    if(cJSON_AddStringToObject(item, "film_number", dto_filing_metadata_dto->film_number) == NULL) {
    goto fail; //String
    }
    }


    // dto_filing_metadata_dto->items
    if(dto_filing_metadata_dto->items) {
    if(cJSON_AddStringToObject(item, "items", dto_filing_metadata_dto->items) == NULL) {
    goto fail; //String
    }
    }


    // dto_filing_metadata_dto->core_type
    if(dto_filing_metadata_dto->core_type) {
    if(cJSON_AddStringToObject(item, "core_type", dto_filing_metadata_dto->core_type) == NULL) {
    goto fail; //String
    }
    }


    // dto_filing_metadata_dto->size
    if(dto_filing_metadata_dto->size) {
    if(cJSON_AddNumberToObject(item, "size", dto_filing_metadata_dto->size) == NULL) {
    goto fail; //Numeric
    }
    }


    // dto_filing_metadata_dto->is_xbrl
    if(dto_filing_metadata_dto->is_xbrl) {
    if(cJSON_AddBoolToObject(item, "is_xbrl", dto_filing_metadata_dto->is_xbrl) == NULL) {
    goto fail; //Bool
    }
    }


    // dto_filing_metadata_dto->is_inline_xbrl
    if(dto_filing_metadata_dto->is_inline_xbrl) {
    if(cJSON_AddBoolToObject(item, "is_inline_xbrl", dto_filing_metadata_dto->is_inline_xbrl) == NULL) {
    goto fail; //Bool
    }
    }


    // dto_filing_metadata_dto->primary_document
    if(dto_filing_metadata_dto->primary_document) {
    if(cJSON_AddStringToObject(item, "primary_document", dto_filing_metadata_dto->primary_document) == NULL) {
    goto fail; //String
    }
    }


    // dto_filing_metadata_dto->primary_doc_description
    if(dto_filing_metadata_dto->primary_doc_description) {
    if(cJSON_AddStringToObject(item, "primary_doc_description", dto_filing_metadata_dto->primary_doc_description) == NULL) {
    goto fail; //String
    }
    }


    // dto_filing_metadata_dto->source_file
    if(dto_filing_metadata_dto->source_file) {
    if(cJSON_AddStringToObject(item, "source_file", dto_filing_metadata_dto->source_file) == NULL) {
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

dto_filing_metadata_dto_t *dto_filing_metadata_dto_parseFromJSON(cJSON *dto_filing_metadata_dtoJSON){

    dto_filing_metadata_dto_t *dto_filing_metadata_dto_local_var = NULL;

    // dto_filing_metadata_dto->cik
    cJSON *cik = cJSON_GetObjectItemCaseSensitive(dto_filing_metadata_dtoJSON, "cik");
    if (cJSON_IsNull(cik)) {
        cik = NULL;
    }
    if (cik) { 
    if(!cJSON_IsNumber(cik))
    {
    goto end; //Numeric
    }
    }

    // dto_filing_metadata_dto->accession_number
    cJSON *accession_number = cJSON_GetObjectItemCaseSensitive(dto_filing_metadata_dtoJSON, "accession_number");
    if (cJSON_IsNull(accession_number)) {
        accession_number = NULL;
    }
    if (accession_number) { 
    if(!cJSON_IsString(accession_number) && !cJSON_IsNull(accession_number))
    {
    goto end; //String
    }
    }

    // dto_filing_metadata_dto->filing_date
    cJSON *filing_date = cJSON_GetObjectItemCaseSensitive(dto_filing_metadata_dtoJSON, "filing_date");
    if (cJSON_IsNull(filing_date)) {
        filing_date = NULL;
    }
    if (filing_date) { 
    if(!cJSON_IsString(filing_date))
    {
    goto end; //Date
    }
    }

    // dto_filing_metadata_dto->report_date
    cJSON *report_date = cJSON_GetObjectItemCaseSensitive(dto_filing_metadata_dtoJSON, "report_date");
    if (cJSON_IsNull(report_date)) {
        report_date = NULL;
    }
    if (report_date) { 
    if(!cJSON_IsString(report_date))
    {
    goto end; //Date
    }
    }

    // dto_filing_metadata_dto->acceptance_date_time
    cJSON *acceptance_date_time = cJSON_GetObjectItemCaseSensitive(dto_filing_metadata_dtoJSON, "acceptance_date_time");
    if (cJSON_IsNull(acceptance_date_time)) {
        acceptance_date_time = NULL;
    }
    if (acceptance_date_time) { 
    if(!cJSON_IsString(acceptance_date_time) && !cJSON_IsNull(acceptance_date_time))
    {
    goto end; //DateTime
    }
    }

    // dto_filing_metadata_dto->act
    cJSON *act = cJSON_GetObjectItemCaseSensitive(dto_filing_metadata_dtoJSON, "act");
    if (cJSON_IsNull(act)) {
        act = NULL;
    }
    if (act) { 
    if(!cJSON_IsString(act) && !cJSON_IsNull(act))
    {
    goto end; //String
    }
    }

    // dto_filing_metadata_dto->form
    cJSON *form = cJSON_GetObjectItemCaseSensitive(dto_filing_metadata_dtoJSON, "form");
    if (cJSON_IsNull(form)) {
        form = NULL;
    }
    if (form) { 
    if(!cJSON_IsString(form) && !cJSON_IsNull(form))
    {
    goto end; //String
    }
    }

    // dto_filing_metadata_dto->file_number
    cJSON *file_number = cJSON_GetObjectItemCaseSensitive(dto_filing_metadata_dtoJSON, "file_number");
    if (cJSON_IsNull(file_number)) {
        file_number = NULL;
    }
    if (file_number) { 
    if(!cJSON_IsString(file_number) && !cJSON_IsNull(file_number))
    {
    goto end; //String
    }
    }

    // dto_filing_metadata_dto->film_number
    cJSON *film_number = cJSON_GetObjectItemCaseSensitive(dto_filing_metadata_dtoJSON, "film_number");
    if (cJSON_IsNull(film_number)) {
        film_number = NULL;
    }
    if (film_number) { 
    if(!cJSON_IsString(film_number) && !cJSON_IsNull(film_number))
    {
    goto end; //String
    }
    }

    // dto_filing_metadata_dto->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(dto_filing_metadata_dtoJSON, "items");
    if (cJSON_IsNull(items)) {
        items = NULL;
    }
    if (items) { 
    if(!cJSON_IsString(items) && !cJSON_IsNull(items))
    {
    goto end; //String
    }
    }

    // dto_filing_metadata_dto->core_type
    cJSON *core_type = cJSON_GetObjectItemCaseSensitive(dto_filing_metadata_dtoJSON, "core_type");
    if (cJSON_IsNull(core_type)) {
        core_type = NULL;
    }
    if (core_type) { 
    if(!cJSON_IsString(core_type) && !cJSON_IsNull(core_type))
    {
    goto end; //String
    }
    }

    // dto_filing_metadata_dto->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(dto_filing_metadata_dtoJSON, "size");
    if (cJSON_IsNull(size)) {
        size = NULL;
    }
    if (size) { 
    if(!cJSON_IsNumber(size))
    {
    goto end; //Numeric
    }
    }

    // dto_filing_metadata_dto->is_xbrl
    cJSON *is_xbrl = cJSON_GetObjectItemCaseSensitive(dto_filing_metadata_dtoJSON, "is_xbrl");
    if (cJSON_IsNull(is_xbrl)) {
        is_xbrl = NULL;
    }
    if (is_xbrl) { 
    if(!cJSON_IsBool(is_xbrl))
    {
    goto end; //Bool
    }
    }

    // dto_filing_metadata_dto->is_inline_xbrl
    cJSON *is_inline_xbrl = cJSON_GetObjectItemCaseSensitive(dto_filing_metadata_dtoJSON, "is_inline_xbrl");
    if (cJSON_IsNull(is_inline_xbrl)) {
        is_inline_xbrl = NULL;
    }
    if (is_inline_xbrl) { 
    if(!cJSON_IsBool(is_inline_xbrl))
    {
    goto end; //Bool
    }
    }

    // dto_filing_metadata_dto->primary_document
    cJSON *primary_document = cJSON_GetObjectItemCaseSensitive(dto_filing_metadata_dtoJSON, "primary_document");
    if (cJSON_IsNull(primary_document)) {
        primary_document = NULL;
    }
    if (primary_document) { 
    if(!cJSON_IsString(primary_document) && !cJSON_IsNull(primary_document))
    {
    goto end; //String
    }
    }

    // dto_filing_metadata_dto->primary_doc_description
    cJSON *primary_doc_description = cJSON_GetObjectItemCaseSensitive(dto_filing_metadata_dtoJSON, "primary_doc_description");
    if (cJSON_IsNull(primary_doc_description)) {
        primary_doc_description = NULL;
    }
    if (primary_doc_description) { 
    if(!cJSON_IsString(primary_doc_description) && !cJSON_IsNull(primary_doc_description))
    {
    goto end; //String
    }
    }

    // dto_filing_metadata_dto->source_file
    cJSON *source_file = cJSON_GetObjectItemCaseSensitive(dto_filing_metadata_dtoJSON, "source_file");
    if (cJSON_IsNull(source_file)) {
        source_file = NULL;
    }
    if (source_file) { 
    if(!cJSON_IsString(source_file) && !cJSON_IsNull(source_file))
    {
    goto end; //String
    }
    }


    dto_filing_metadata_dto_local_var = dto_filing_metadata_dto_create_internal (
        cik ? cik->valuedouble : 0,
        accession_number && !cJSON_IsNull(accession_number) ? strdup(accession_number->valuestring) : NULL,
        filing_date ? strdup(filing_date->valuestring) : NULL,
        report_date ? strdup(report_date->valuestring) : NULL,
        acceptance_date_time && !cJSON_IsNull(acceptance_date_time) ? strdup(acceptance_date_time->valuestring) : NULL,
        act && !cJSON_IsNull(act) ? strdup(act->valuestring) : NULL,
        form && !cJSON_IsNull(form) ? strdup(form->valuestring) : NULL,
        file_number && !cJSON_IsNull(file_number) ? strdup(file_number->valuestring) : NULL,
        film_number && !cJSON_IsNull(film_number) ? strdup(film_number->valuestring) : NULL,
        items && !cJSON_IsNull(items) ? strdup(items->valuestring) : NULL,
        core_type && !cJSON_IsNull(core_type) ? strdup(core_type->valuestring) : NULL,
        size ? size->valuedouble : 0,
        is_xbrl ? is_xbrl->valueint : 0,
        is_inline_xbrl ? is_inline_xbrl->valueint : 0,
        primary_document && !cJSON_IsNull(primary_document) ? strdup(primary_document->valuestring) : NULL,
        primary_doc_description && !cJSON_IsNull(primary_doc_description) ? strdup(primary_doc_description->valuestring) : NULL,
        source_file && !cJSON_IsNull(source_file) ? strdup(source_file->valuestring) : NULL
        );

    return dto_filing_metadata_dto_local_var;
end:
    return NULL;

}
