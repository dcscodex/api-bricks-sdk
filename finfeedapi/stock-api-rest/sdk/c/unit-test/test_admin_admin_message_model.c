#ifndef admin_admin_message_model_TEST
#define admin_admin_message_model_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define admin_admin_message_model_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/admin_admin_message_model.h"
admin_admin_message_model_t* instantiate_admin_admin_message_model(int include_optional);

#include "test_admin_trading_status_model.c"
#include "test_admin_official_price_model.c"
#include "test_admin_security_event_model.c"
#include "test_admin_auction_information_model.c"
#include "test_admin_short_sale_price_test_status_model.c"
#include "test_admin_operational_halt_status_model.c"
#include "test_admin_retail_liquidity_indicator_model.c"
#include "test_admin_system_event_model.c"
#include "test_admin_security_directory_model.c"


admin_admin_message_model_t* instantiate_admin_admin_message_model(int include_optional) {
  admin_admin_message_model_t* admin_admin_message_model = NULL;
  if (include_optional) {
    admin_admin_message_model = admin_admin_message_model_create(
       // false, not to have infinite recursion
      instantiate_admin_trading_status_model(0),
       // false, not to have infinite recursion
      instantiate_admin_official_price_model(0),
       // false, not to have infinite recursion
      instantiate_admin_security_event_model(0),
       // false, not to have infinite recursion
      instantiate_admin_auction_information_model(0),
       // false, not to have infinite recursion
      instantiate_admin_short_sale_price_test_status_model(0),
       // false, not to have infinite recursion
      instantiate_admin_operational_halt_status_model(0),
       // false, not to have infinite recursion
      instantiate_admin_retail_liquidity_indicator_model(0),
       // false, not to have infinite recursion
      instantiate_admin_system_event_model(0),
       // false, not to have infinite recursion
      instantiate_admin_security_directory_model(0)
    );
  } else {
    admin_admin_message_model = admin_admin_message_model_create(
      NULL,
      NULL,
      NULL,
      NULL,
      NULL,
      NULL,
      NULL,
      NULL,
      NULL
    );
  }

  return admin_admin_message_model;
}


#ifdef admin_admin_message_model_MAIN

void test_admin_admin_message_model(int include_optional) {
    admin_admin_message_model_t* admin_admin_message_model_1 = instantiate_admin_admin_message_model(include_optional);

	cJSON* jsonadmin_admin_message_model_1 = admin_admin_message_model_convertToJSON(admin_admin_message_model_1);
	printf("admin_admin_message_model :\n%s\n", cJSON_Print(jsonadmin_admin_message_model_1));
	admin_admin_message_model_t* admin_admin_message_model_2 = admin_admin_message_model_parseFromJSON(jsonadmin_admin_message_model_1);
	cJSON* jsonadmin_admin_message_model_2 = admin_admin_message_model_convertToJSON(admin_admin_message_model_2);
	printf("repeating admin_admin_message_model:\n%s\n", cJSON_Print(jsonadmin_admin_message_model_2));
}

int main() {
  test_admin_admin_message_model(1);
  test_admin_admin_message_model(0);

  printf("Hello world \n");
  return 0;
}

#endif // admin_admin_message_model_MAIN
#endif // admin_admin_message_model_TEST
