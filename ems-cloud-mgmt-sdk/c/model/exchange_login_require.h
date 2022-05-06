/*
 * exchange_login_require.h
 *
 * 
 */

#ifndef _exchange_login_require_H_
#define _exchange_login_require_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct exchange_login_require_t exchange_login_require_t;




typedef struct exchange_login_require_t {
    char *exchange_id; // string
    char *location_id; // string
    list_t *required_parameters; //primitive container

} exchange_login_require_t;

exchange_login_require_t *exchange_login_require_create(
    char *exchange_id,
    char *location_id,
    list_t *required_parameters
);

void exchange_login_require_free(exchange_login_require_t *exchange_login_require);

exchange_login_require_t *exchange_login_require_parseFromJSON(cJSON *exchange_login_requireJSON);

cJSON *exchange_login_require_convertToJSON(exchange_login_require_t *exchange_login_require);

#endif /* _exchange_login_require_H_ */

