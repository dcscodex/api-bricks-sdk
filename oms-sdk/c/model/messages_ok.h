/*
 * messages_ok.h
 *
 * 
 */

#ifndef _messages_ok_H_
#define _messages_ok_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct messages_ok_t messages_ok_t;




typedef struct messages_ok_t {
    char *type; // string
    char *exchange_id; // string
    char *message; // string

} messages_ok_t;

messages_ok_t *messages_ok_create(
    char *type,
    char *exchange_id,
    char *message
);

void messages_ok_free(messages_ok_t *messages_ok);

messages_ok_t *messages_ok_parseFromJSON(cJSON *messages_okJSON);

cJSON *messages_ok_convertToJSON(messages_ok_t *messages_ok);

#endif /* _messages_ok_H_ */

