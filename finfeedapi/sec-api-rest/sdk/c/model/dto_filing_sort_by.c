#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "dto_filing_sort_by.h"


char* dto_filing_sort_by_dto_filing_sort_by_ToString(finfeedapi_sec_rest_api_dto_filing_sort_by__e dto_filing_sort_by) {
    char *dto_filing_sort_byArray[] =  { "NULL", "AccessionNumber", "FilingDate", "ReportDate", "AcceptanceDateTime", "Size" };
    return dto_filing_sort_byArray[dto_filing_sort_by];
}

finfeedapi_sec_rest_api_dto_filing_sort_by__e dto_filing_sort_by_dto_filing_sort_by_FromString(char* dto_filing_sort_by) {
    int stringToReturn = 0;
    char *dto_filing_sort_byArray[] =  { "NULL", "AccessionNumber", "FilingDate", "ReportDate", "AcceptanceDateTime", "Size" };
    size_t sizeofArray = sizeof(dto_filing_sort_byArray) / sizeof(dto_filing_sort_byArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(dto_filing_sort_by, dto_filing_sort_byArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *dto_filing_sort_by_convertToJSON(finfeedapi_sec_rest_api_dto_filing_sort_by__e dto_filing_sort_by) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "dto_filing_sort_by", dto_filing_sort_by_dto_filing_sort_by_ToString(dto_filing_sort_by)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

finfeedapi_sec_rest_api_dto_filing_sort_by__e dto_filing_sort_by_parseFromJSON(cJSON *dto_filing_sort_byJSON) {
    if(!cJSON_IsString(dto_filing_sort_byJSON) || (dto_filing_sort_byJSON->valuestring == NULL)) {
        return 0;
    }
    return dto_filing_sort_by_dto_filing_sort_by_FromString(dto_filing_sort_byJSON->valuestring);
}
