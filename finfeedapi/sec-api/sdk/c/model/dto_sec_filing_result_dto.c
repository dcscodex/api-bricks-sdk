#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "dto_sec_filing_result_dto.h"



static dto_sec_filing_result_dto_t *dto_sec_filing_result_dto_create_internal(
    char *accession_number,
    char *form_type,
    char *filing_date,
    char *company_name,
    long cik,
    char *document_filename,
    char *document_description,
    char *source_file
    ) {
    dto_sec_filing_result_dto_t *dto_sec_filing_result_dto_local_var = malloc(sizeof(dto_sec_filing_result_dto_t));
    if (!dto_sec_filing_result_dto_local_var) {
        return NULL;
    }
    dto_sec_filing_result_dto_local_var->accession_number = accession_number;
    dto_sec_filing_result_dto_local_var->form_type = form_type;
    dto_sec_filing_result_dto_local_var->filing_date = filing_date;
    dto_sec_filing_result_dto_local_var->company_name = company_name;
    dto_sec_filing_result_dto_local_var->cik = cik;
    dto_sec_filing_result_dto_local_var->document_filename = document_filename;
    dto_sec_filing_result_dto_local_var->document_description = document_description;
    dto_sec_filing_result_dto_local_var->source_file = source_file;

    dto_sec_filing_result_dto_local_var->_library_owned = 1;
    return dto_sec_filing_result_dto_local_var;
}

__attribute__((deprecated)) dto_sec_filing_result_dto_t *dto_sec_filing_result_dto_create(
    char *accession_number,
    char *form_type,
    char *filing_date,
    char *company_name,
    long cik,
    char *document_filename,
    char *document_description,
    char *source_file
    ) {
    return dto_sec_filing_result_dto_create_internal (
        accession_number,
        form_type,
        filing_date,
        company_name,
        cik,
        document_filename,
        document_description,
        source_file
        );
}

void dto_sec_filing_result_dto_free(dto_sec_filing_result_dto_t *dto_sec_filing_result_dto) {
    if(NULL == dto_sec_filing_result_dto){
        return ;
    }
    if(dto_sec_filing_result_dto->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "dto_sec_filing_result_dto_free");
        return ;
    }
    listEntry_t *listEntry;
    if (dto_sec_filing_result_dto->accession_number) {
        free(dto_sec_filing_result_dto->accession_number);
        dto_sec_filing_result_dto->accession_number = NULL;
    }
    if (dto_sec_filing_result_dto->form_type) {
        free(dto_sec_filing_result_dto->form_type);
        dto_sec_filing_result_dto->form_type = NULL;
    }
    if (dto_sec_filing_result_dto->filing_date) {
        free(dto_sec_filing_result_dto->filing_date);
        dto_sec_filing_result_dto->filing_date = NULL;
    }
    if (dto_sec_filing_result_dto->company_name) {
        free(dto_sec_filing_result_dto->company_name);
        dto_sec_filing_result_dto->company_name = NULL;
    }
    if (dto_sec_filing_result_dto->document_filename) {
        free(dto_sec_filing_result_dto->document_filename);
        dto_sec_filing_result_dto->document_filename = NULL;
    }
    if (dto_sec_filing_result_dto->document_description) {
        free(dto_sec_filing_result_dto->document_description);
        dto_sec_filing_result_dto->document_description = NULL;
    }
    if (dto_sec_filing_result_dto->source_file) {
        free(dto_sec_filing_result_dto->source_file);
        dto_sec_filing_result_dto->source_file = NULL;
    }
    free(dto_sec_filing_result_dto);
}

cJSON *dto_sec_filing_result_dto_convertToJSON(dto_sec_filing_result_dto_t *dto_sec_filing_result_dto) {
    cJSON *item = cJSON_CreateObject();

    // dto_sec_filing_result_dto->accession_number
    if(dto_sec_filing_result_dto->accession_number) {
    if(cJSON_AddStringToObject(item, "accession_number", dto_sec_filing_result_dto->accession_number) == NULL) {
    goto fail; //String
    }
    }


    // dto_sec_filing_result_dto->form_type
    if(dto_sec_filing_result_dto->form_type) {
    if(cJSON_AddStringToObject(item, "form_type", dto_sec_filing_result_dto->form_type) == NULL) {
    goto fail; //String
    }
    }


    // dto_sec_filing_result_dto->filing_date
    if(dto_sec_filing_result_dto->filing_date) {
    if(cJSON_AddStringToObject(item, "filing_date", dto_sec_filing_result_dto->filing_date) == NULL) {
    goto fail; //Date
    }
    }


    // dto_sec_filing_result_dto->company_name
    if(dto_sec_filing_result_dto->company_name) {
    if(cJSON_AddStringToObject(item, "company_name", dto_sec_filing_result_dto->company_name) == NULL) {
    goto fail; //String
    }
    }


    // dto_sec_filing_result_dto->cik
    if(dto_sec_filing_result_dto->cik) {
    if(cJSON_AddNumberToObject(item, "cik", dto_sec_filing_result_dto->cik) == NULL) {
    goto fail; //Numeric
    }
    }


    // dto_sec_filing_result_dto->document_filename
    if(dto_sec_filing_result_dto->document_filename) {
    if(cJSON_AddStringToObject(item, "document_filename", dto_sec_filing_result_dto->document_filename) == NULL) {
    goto fail; //String
    }
    }


    // dto_sec_filing_result_dto->document_description
    if(dto_sec_filing_result_dto->document_description) {
    if(cJSON_AddStringToObject(item, "document_description", dto_sec_filing_result_dto->document_description) == NULL) {
    goto fail; //String
    }
    }


    // dto_sec_filing_result_dto->source_file
    if(dto_sec_filing_result_dto->source_file) {
    if(cJSON_AddStringToObject(item, "source_file", dto_sec_filing_result_dto->source_file) == NULL) {
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

dto_sec_filing_result_dto_t *dto_sec_filing_result_dto_parseFromJSON(cJSON *dto_sec_filing_result_dtoJSON){

    dto_sec_filing_result_dto_t *dto_sec_filing_result_dto_local_var = NULL;

    // dto_sec_filing_result_dto->accession_number
    cJSON *accession_number = cJSON_GetObjectItemCaseSensitive(dto_sec_filing_result_dtoJSON, "accession_number");
    if (cJSON_IsNull(accession_number)) {
        accession_number = NULL;
    }
    if (accession_number) { 
    if(!cJSON_IsString(accession_number) && !cJSON_IsNull(accession_number))
    {
    goto end; //String
    }
    }

    // dto_sec_filing_result_dto->form_type
    cJSON *form_type = cJSON_GetObjectItemCaseSensitive(dto_sec_filing_result_dtoJSON, "form_type");
    if (cJSON_IsNull(form_type)) {
        form_type = NULL;
    }
    if (form_type) { 
    if(!cJSON_IsString(form_type) && !cJSON_IsNull(form_type))
    {
    goto end; //String
    }
    }

    // dto_sec_filing_result_dto->filing_date
    cJSON *filing_date = cJSON_GetObjectItemCaseSensitive(dto_sec_filing_result_dtoJSON, "filing_date");
    if (cJSON_IsNull(filing_date)) {
        filing_date = NULL;
    }
    if (filing_date) { 
    if(!cJSON_IsString(filing_date))
    {
    goto end; //Date
    }
    }

    // dto_sec_filing_result_dto->company_name
    cJSON *company_name = cJSON_GetObjectItemCaseSensitive(dto_sec_filing_result_dtoJSON, "company_name");
    if (cJSON_IsNull(company_name)) {
        company_name = NULL;
    }
    if (company_name) { 
    if(!cJSON_IsString(company_name) && !cJSON_IsNull(company_name))
    {
    goto end; //String
    }
    }

    // dto_sec_filing_result_dto->cik
    cJSON *cik = cJSON_GetObjectItemCaseSensitive(dto_sec_filing_result_dtoJSON, "cik");
    if (cJSON_IsNull(cik)) {
        cik = NULL;
    }
    if (cik) { 
    if(!cJSON_IsNumber(cik))
    {
    goto end; //Numeric
    }
    }

    // dto_sec_filing_result_dto->document_filename
    cJSON *document_filename = cJSON_GetObjectItemCaseSensitive(dto_sec_filing_result_dtoJSON, "document_filename");
    if (cJSON_IsNull(document_filename)) {
        document_filename = NULL;
    }
    if (document_filename) { 
    if(!cJSON_IsString(document_filename) && !cJSON_IsNull(document_filename))
    {
    goto end; //String
    }
    }

    // dto_sec_filing_result_dto->document_description
    cJSON *document_description = cJSON_GetObjectItemCaseSensitive(dto_sec_filing_result_dtoJSON, "document_description");
    if (cJSON_IsNull(document_description)) {
        document_description = NULL;
    }
    if (document_description) { 
    if(!cJSON_IsString(document_description) && !cJSON_IsNull(document_description))
    {
    goto end; //String
    }
    }

    // dto_sec_filing_result_dto->source_file
    cJSON *source_file = cJSON_GetObjectItemCaseSensitive(dto_sec_filing_result_dtoJSON, "source_file");
    if (cJSON_IsNull(source_file)) {
        source_file = NULL;
    }
    if (source_file) { 
    if(!cJSON_IsString(source_file) && !cJSON_IsNull(source_file))
    {
    goto end; //String
    }
    }


    dto_sec_filing_result_dto_local_var = dto_sec_filing_result_dto_create_internal (
        accession_number && !cJSON_IsNull(accession_number) ? strdup(accession_number->valuestring) : NULL,
        form_type && !cJSON_IsNull(form_type) ? strdup(form_type->valuestring) : NULL,
        filing_date ? strdup(filing_date->valuestring) : NULL,
        company_name && !cJSON_IsNull(company_name) ? strdup(company_name->valuestring) : NULL,
        cik ? cik->valuedouble : 0,
        document_filename && !cJSON_IsNull(document_filename) ? strdup(document_filename->valuestring) : NULL,
        document_description && !cJSON_IsNull(document_description) ? strdup(document_description->valuestring) : NULL,
        source_file && !cJSON_IsNull(source_file) ? strdup(source_file->valuestring) : NULL
        );

    return dto_sec_filing_result_dto_local_var;
end:
    return NULL;

}
