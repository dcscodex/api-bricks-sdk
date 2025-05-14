/*
 * admin_auction_information_model.h
 *
 * Represents the response DTO for auction information
 */

#ifndef _admin_auction_information_model_H_
#define _admin_auction_information_model_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct admin_auction_information_model_t admin_auction_information_model_t;




typedef struct admin_auction_information_model_t {
    char *symbol; // string
    long timestamp_nanos; //numeric
    char *timestamp; //date time
    int auction_type; //numeric
    char *auction_type_code; // string
    char *auction_type_text; // string
    int is_auction_type_opening; //boolean
    int is_auction_type_closing; //boolean
    int is_auction_type_ipo; //boolean
    int is_auction_type_halt; //boolean
    int is_auction_type_volatility; //boolean
    int paired_shares; //numeric
    double reference_price; //numeric
    double indicative_clearing_price; //numeric
    int imbalance_shares; //numeric
    int imbalance_side; //numeric
    char *imbalance_side_code; // string
    char *imbalance_side_text; // string
    int is_imbalance_side_buy; //boolean
    int is_imbalance_side_sell; //boolean
    int is_imbalance_side_none; //boolean
    int extension_number; //numeric
    int scheduled_auction_time_seconds; //numeric
    char *scheduled_auction_time; //date time
    double auction_book_clearing_price; //numeric
    double collar_reference_price; //numeric
    double lower_auction_collar; //numeric
    double upper_auction_collar; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} admin_auction_information_model_t;

__attribute__((deprecated)) admin_auction_information_model_t *admin_auction_information_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int auction_type,
    char *auction_type_code,
    char *auction_type_text,
    int is_auction_type_opening,
    int is_auction_type_closing,
    int is_auction_type_ipo,
    int is_auction_type_halt,
    int is_auction_type_volatility,
    int paired_shares,
    double reference_price,
    double indicative_clearing_price,
    int imbalance_shares,
    int imbalance_side,
    char *imbalance_side_code,
    char *imbalance_side_text,
    int is_imbalance_side_buy,
    int is_imbalance_side_sell,
    int is_imbalance_side_none,
    int extension_number,
    int scheduled_auction_time_seconds,
    char *scheduled_auction_time,
    double auction_book_clearing_price,
    double collar_reference_price,
    double lower_auction_collar,
    double upper_auction_collar
);

void admin_auction_information_model_free(admin_auction_information_model_t *admin_auction_information_model);

admin_auction_information_model_t *admin_auction_information_model_parseFromJSON(cJSON *admin_auction_information_modelJSON);

cJSON *admin_auction_information_model_convertToJSON(admin_auction_information_model_t *admin_auction_information_model);

#endif /* _admin_auction_information_model_H_ */

