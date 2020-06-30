/*
 * messages.h
 *
 * 
 */

#ifndef _messages_H_
#define _messages_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct messages_t messages_t;




typedef struct messages_t {
    char *type; // string
    char *exchange_id; // string
    char *message; // string

} messages_t;

messages_t *messages_create(
    char *type,
    char *exchange_id,
    char *message
);

void messages_free(messages_t *messages);

messages_t *messages_parseFromJSON(cJSON *messagesJSON);

cJSON *messages_convertToJSON(messages_t *messages);

#endif /* _messages_H_ */

