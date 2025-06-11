#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "dto_extractor_type.h"


char* dto_extractor_type_dto_extractor_type_ToString(finfeedapi_sec_rest_api_dto_extractor_type__e dto_extractor_type) {
    char *dto_extractor_typeArray[] =  { "NULL", "text", "html" };
    return dto_extractor_typeArray[dto_extractor_type];
}

finfeedapi_sec_rest_api_dto_extractor_type__e dto_extractor_type_dto_extractor_type_FromString(char* dto_extractor_type) {
    int stringToReturn = 0;
    char *dto_extractor_typeArray[] =  { "NULL", "text", "html" };
    size_t sizeofArray = sizeof(dto_extractor_typeArray) / sizeof(dto_extractor_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(dto_extractor_type, dto_extractor_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *dto_extractor_type_convertToJSON(finfeedapi_sec_rest_api_dto_extractor_type__e dto_extractor_type) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "dto_extractor_type", dto_extractor_type_dto_extractor_type_ToString(dto_extractor_type)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

finfeedapi_sec_rest_api_dto_extractor_type__e dto_extractor_type_parseFromJSON(cJSON *dto_extractor_typeJSON) {
    if(!cJSON_IsString(dto_extractor_typeJSON) || (dto_extractor_typeJSON->valuestring == NULL)) {
        return 0;
    }
    return dto_extractor_type_dto_extractor_type_FromString(dto_extractor_typeJSON->valuestring);
}
