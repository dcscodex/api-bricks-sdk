/*
 * dto_extractor_type.h
 *
 * 
 */

#ifndef _dto_extractor_type_H_
#define _dto_extractor_type_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct dto_extractor_type_t dto_extractor_type_t;


// Enum  for dto_extractor_type

typedef enum { finfeedapi_sec_rest_api_dto_extractor_type__NULL = 0, finfeedapi_sec_rest_api_dto_extractor_type__text, finfeedapi_sec_rest_api_dto_extractor_type__html } finfeedapi_sec_rest_api_dto_extractor_type__e;

char* dto_extractor_type_dto_extractor_type_ToString(finfeedapi_sec_rest_api_dto_extractor_type__e dto_extractor_type);

finfeedapi_sec_rest_api_dto_extractor_type__e dto_extractor_type_dto_extractor_type_FromString(char* dto_extractor_type);

cJSON *dto_extractor_type_convertToJSON(finfeedapi_sec_rest_api_dto_extractor_type__e dto_extractor_type);

finfeedapi_sec_rest_api_dto_extractor_type__e dto_extractor_type_parseFromJSON(cJSON *dto_extractor_typeJSON);

#endif /* _dto_extractor_type_H_ */

