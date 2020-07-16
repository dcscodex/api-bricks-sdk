/*
 * severity.h
 *
 * Severity of the message.
 */

#ifndef _severity_H_
#define _severity_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct severity_t severity_t;


// Enum  for severity

typedef enum { oeml___rest_api_severity__NULL = 0, oeml___rest_api_severity__INFO, oeml___rest_api_severity__WARNING, oeml___rest_api_severity__ERROR } oeml___rest_api_severity__e;

char* severity_severity_ToString(oeml___rest_api_severity__e severity);

oeml___rest_api_severity__e severity_severity_FromString(char* severity);

//cJSON *severity_severity_convertToJSON(oeml___rest_api_severity__e severity);

//oeml___rest_api_severity__e severity_severity_parseFromJSON(cJSON *severityJSON);

#endif /* _severity_H_ */

