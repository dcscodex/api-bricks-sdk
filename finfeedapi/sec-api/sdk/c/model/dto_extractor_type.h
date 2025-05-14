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

typedef enum { rest_api_dto_extractor_type__NULL = 0, rest_api_dto_extractor_type__text, rest_api_dto_extractor_type__html } rest_api_dto_extractor_type__e;

char* dto_extractor_type_dto_extractor_type_ToString(rest_api_dto_extractor_type__e dto_extractor_type);

rest_api_dto_extractor_type__e dto_extractor_type_dto_extractor_type_FromString(char* dto_extractor_type);

cJSON *dto_extractor_type_convertToJSON(rest_api_dto_extractor_type__e dto_extractor_type);

rest_api_dto_extractor_type__e dto_extractor_type_parseFromJSON(cJSON *dto_extractor_typeJSON);

#endif /* _dto_extractor_type_H_ */

