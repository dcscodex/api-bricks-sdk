/*
 * cancel_order.h
 *
 * 
 */

#ifndef _cancel_order_H_
#define _cancel_order_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cancel_order_t cancel_order_t;




typedef struct cancel_order_t {
    char *exchange_id; // string
    char *exchange_order_id; // string
    char *client_order_id; // string

} cancel_order_t;

cancel_order_t *cancel_order_create(
    char *exchange_id,
    char *exchange_order_id,
    char *client_order_id
);

void cancel_order_free(cancel_order_t *cancel_order);

cancel_order_t *cancel_order_parseFromJSON(cJSON *cancel_orderJSON);

cJSON *cancel_order_convertToJSON(cancel_order_t *cancel_order);

#endif /* _cancel_order_H_ */

