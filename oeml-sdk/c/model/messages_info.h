/*
 * messages_info.h
 *
 * 
 */

#ifndef _messages_info_H_
#define _messages_info_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct messages_info_t messages_info_t;




typedef struct messages_info_t {
    char *type; // string
    char *exchange_id; // string
    char *error_message; // string

} messages_info_t;

messages_info_t *messages_info_create(
    char *type,
    char *exchange_id,
    char *error_message
);

void messages_info_free(messages_info_t *messages_info);

messages_info_t *messages_info_parseFromJSON(cJSON *messages_infoJSON);

cJSON *messages_info_convertToJSON(messages_info_t *messages_info);

#endif /* _messages_info_H_ */

