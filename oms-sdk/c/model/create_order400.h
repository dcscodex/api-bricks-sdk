/*
 * create_order400.h
 *
 * 
 */

#ifndef _create_order400_H_
#define _create_order400_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct create_order400_t create_order400_t;




typedef struct create_order400_t {
    char *type; // string
    char *title; // string
    double status; //numeric
    char *trace_id; // string
    char *errors; // string

} create_order400_t;

create_order400_t *create_order400_create(
    char *type,
    char *title,
    double status,
    char *trace_id,
    char *errors
);

void create_order400_free(create_order400_t *create_order400);

create_order400_t *create_order400_parseFromJSON(cJSON *create_order400JSON);

cJSON *create_order400_convertToJSON(create_order400_t *create_order400);

#endif /* _create_order400_H_ */

