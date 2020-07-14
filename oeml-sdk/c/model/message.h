/*
 * message.h
 *
 * 
 */

#ifndef _message_H_
#define _message_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct message_t message_t;

#include "severity.h"

// Enum  for message

typedef enum  { oeml___rest_api_message__NULL = 0, oeml___rest_api_message__INFO, oeml___rest_api_message__WARNING, oeml___rest_api_message__ERROR } oeml___rest_api_message__e;

char* message_severity_ToString(oeml___rest_api_message__e severity);

oeml___rest_api_message__e message_severity_FromString(char* severity);



typedef struct message_t {
    char *type; // string
    char *exchange_id; // string
    char *message; // string

} message_t;

message_t *message_create(
    char *type,
    char *exchange_id,
    char *message
);

void message_free(message_t *message);

message_t *message_parseFromJSON(cJSON *messageJSON);

cJSON *message_convertToJSON(message_t *message);

#endif /* _message_H_ */

