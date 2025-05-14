/*
 * admin_system_event_model.h
 *
 * Represents the response DTO for system event information
 */

#ifndef _admin_system_event_model_H_
#define _admin_system_event_model_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct admin_system_event_model_t admin_system_event_model_t;




typedef struct admin_system_event_model_t {
    long timestamp_nanos; //numeric
    char *timestamp; //date time
    int system_event; //numeric
    char *system_event_code; // string
    char *system_event_text; // string
    int is_system_event_start_of_messages; //boolean
    int is_system_event_start_of_system_hours; //boolean
    int is_system_event_start_of_regular_market_hours; //boolean
    int is_system_event_end_of_regular_market_hours; //boolean
    int is_system_event_end_of_system_hours; //boolean
    int is_system_event_end_of_messages; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} admin_system_event_model_t;

__attribute__((deprecated)) admin_system_event_model_t *admin_system_event_model_create(
    long timestamp_nanos,
    char *timestamp,
    int system_event,
    char *system_event_code,
    char *system_event_text,
    int is_system_event_start_of_messages,
    int is_system_event_start_of_system_hours,
    int is_system_event_start_of_regular_market_hours,
    int is_system_event_end_of_regular_market_hours,
    int is_system_event_end_of_system_hours,
    int is_system_event_end_of_messages
);

void admin_system_event_model_free(admin_system_event_model_t *admin_system_event_model);

admin_system_event_model_t *admin_system_event_model_parseFromJSON(cJSON *admin_system_event_modelJSON);

cJSON *admin_system_event_model_convertToJSON(admin_system_event_model_t *admin_system_event_model);

#endif /* _admin_system_event_model_H_ */

