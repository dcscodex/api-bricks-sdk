/*
 * order.h
 *
 * 
 */

#ifndef _order_H_
#define _order_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct order_t order_t;

#include "order_data.h"



typedef struct order_t {
    char *type; // string
    char *exchange_name; // string
    list_t *data; //nonprimitive container

} order_t;

order_t *order_create(
    char *type,
    char *exchange_name,
    list_t *data
);

void order_free(order_t *order);

order_t *order_parseFromJSON(cJSON *orderJSON);

cJSON *order_convertToJSON(order_t *order);

#endif /* _order_H_ */

