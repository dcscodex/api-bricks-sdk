#ifndef admin_official_price_model_TEST
#define admin_official_price_model_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define admin_official_price_model_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/admin_official_price_model.h"
admin_official_price_model_t* instantiate_admin_official_price_model(int include_optional);



admin_official_price_model_t* instantiate_admin_official_price_model(int include_optional) {
  admin_official_price_model_t* admin_official_price_model = NULL;
  if (include_optional) {
    admin_official_price_model = admin_official_price_model_create(
      "0",
      56,
      "2013-10-20T19:20:30+01:00",
      56,
      "0",
      "0",
      1,
      1,
      1.337
    );
  } else {
    admin_official_price_model = admin_official_price_model_create(
      "0",
      56,
      "2013-10-20T19:20:30+01:00",
      56,
      "0",
      "0",
      1,
      1,
      1.337
    );
  }

  return admin_official_price_model;
}


#ifdef admin_official_price_model_MAIN

void test_admin_official_price_model(int include_optional) {
    admin_official_price_model_t* admin_official_price_model_1 = instantiate_admin_official_price_model(include_optional);

	cJSON* jsonadmin_official_price_model_1 = admin_official_price_model_convertToJSON(admin_official_price_model_1);
	printf("admin_official_price_model :\n%s\n", cJSON_Print(jsonadmin_official_price_model_1));
	admin_official_price_model_t* admin_official_price_model_2 = admin_official_price_model_parseFromJSON(jsonadmin_official_price_model_1);
	cJSON* jsonadmin_official_price_model_2 = admin_official_price_model_convertToJSON(admin_official_price_model_2);
	printf("repeating admin_official_price_model:\n%s\n", cJSON_Print(jsonadmin_official_price_model_2));
}

int main() {
  test_admin_official_price_model(1);
  test_admin_official_price_model(0);

  printf("Hello world \n");
  return 0;
}

#endif // admin_official_price_model_MAIN
#endif // admin_official_price_model_TEST
