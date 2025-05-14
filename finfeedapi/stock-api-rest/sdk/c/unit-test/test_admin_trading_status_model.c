#ifndef admin_trading_status_model_TEST
#define admin_trading_status_model_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define admin_trading_status_model_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/admin_trading_status_model.h"
admin_trading_status_model_t* instantiate_admin_trading_status_model(int include_optional);



admin_trading_status_model_t* instantiate_admin_trading_status_model(int include_optional) {
  admin_trading_status_model_t* admin_trading_status_model = NULL;
  if (include_optional) {
    admin_trading_status_model = admin_trading_status_model_create(
      "0",
      56,
      "2013-10-20T19:20:30+01:00",
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1
    );
  } else {
    admin_trading_status_model = admin_trading_status_model_create(
      "0",
      56,
      "2013-10-20T19:20:30+01:00",
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1
    );
  }

  return admin_trading_status_model;
}


#ifdef admin_trading_status_model_MAIN

void test_admin_trading_status_model(int include_optional) {
    admin_trading_status_model_t* admin_trading_status_model_1 = instantiate_admin_trading_status_model(include_optional);

	cJSON* jsonadmin_trading_status_model_1 = admin_trading_status_model_convertToJSON(admin_trading_status_model_1);
	printf("admin_trading_status_model :\n%s\n", cJSON_Print(jsonadmin_trading_status_model_1));
	admin_trading_status_model_t* admin_trading_status_model_2 = admin_trading_status_model_parseFromJSON(jsonadmin_trading_status_model_1);
	cJSON* jsonadmin_trading_status_model_2 = admin_trading_status_model_convertToJSON(admin_trading_status_model_2);
	printf("repeating admin_trading_status_model:\n%s\n", cJSON_Print(jsonadmin_trading_status_model_2));
}

int main() {
  test_admin_trading_status_model(1);
  test_admin_trading_status_model(0);

  printf("Hello world \n");
  return 0;
}

#endif // admin_trading_status_model_MAIN
#endif // admin_trading_status_model_TEST
