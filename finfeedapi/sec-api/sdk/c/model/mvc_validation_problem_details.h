/*
 * mvc_validation_problem_details.h
 *
 * 
 */

#ifndef _mvc_validation_problem_details_H_
#define _mvc_validation_problem_details_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct mvc_validation_problem_details_t mvc_validation_problem_details_t;

#include "any_type.h"



typedef struct mvc_validation_problem_details_t {
    char *type; // string
    char *title; // string
    int status; //numeric
    char *detail; // string
    char *instance; // string
    list_t* errors; //map

    int _library_owned; // Is the library responsible for freeing this object?
} mvc_validation_problem_details_t;

__attribute__((deprecated)) mvc_validation_problem_details_t *mvc_validation_problem_details_create(
    char *type,
    char *title,
    int status,
    char *detail,
    char *instance,
    list_t* errors
);

void mvc_validation_problem_details_free(mvc_validation_problem_details_t *mvc_validation_problem_details);

mvc_validation_problem_details_t *mvc_validation_problem_details_parseFromJSON(cJSON *mvc_validation_problem_detailsJSON);

cJSON *mvc_validation_problem_details_convertToJSON(mvc_validation_problem_details_t *mvc_validation_problem_details);

#endif /* _mvc_validation_problem_details_H_ */

