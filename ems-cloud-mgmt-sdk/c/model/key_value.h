/*
 * key_value.h
 *
 * Key Value pair used to configure exchange accounts.
 */

#ifndef _key_value_H_
#define _key_value_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct key_value_t key_value_t;




typedef struct key_value_t {
    char *key; // string
    char *value; // string

} key_value_t;

key_value_t *key_value_create(
    char *key,
    char *value
);

void key_value_free(key_value_t *key_value);

key_value_t *key_value_parseFromJSON(cJSON *key_valueJSON);

cJSON *key_value_convertToJSON(key_value_t *key_value);

#endif /* _key_value_H_ */

