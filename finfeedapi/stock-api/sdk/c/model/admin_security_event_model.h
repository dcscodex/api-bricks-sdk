/*
 * admin_security_event_model.h
 *
 * Represents the response DTO for security event information
 */

#ifndef _admin_security_event_model_H_
#define _admin_security_event_model_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct admin_security_event_model_t admin_security_event_model_t;




typedef struct admin_security_event_model_t {
    char *symbol; // string
    long timestamp_nanos; //numeric
    char *timestamp; //date time
    int security_event; //numeric
    char *security_event_code; // string
    char *security_event_text; // string
    int is_opening_process_complete; //boolean
    int is_closing_process_complete; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} admin_security_event_model_t;

__attribute__((deprecated)) admin_security_event_model_t *admin_security_event_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int security_event,
    char *security_event_code,
    char *security_event_text,
    int is_opening_process_complete,
    int is_closing_process_complete
);

void admin_security_event_model_free(admin_security_event_model_t *admin_security_event_model);

admin_security_event_model_t *admin_security_event_model_parseFromJSON(cJSON *admin_security_event_modelJSON);

cJSON *admin_security_event_model_convertToJSON(admin_security_event_model_t *admin_security_event_model);

#endif /* _admin_security_event_model_H_ */

