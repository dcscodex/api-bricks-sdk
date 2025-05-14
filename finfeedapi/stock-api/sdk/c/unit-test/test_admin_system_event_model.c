#ifndef admin_system_event_model_TEST
#define admin_system_event_model_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define admin_system_event_model_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/admin_system_event_model.h"
admin_system_event_model_t* instantiate_admin_system_event_model(int include_optional);



admin_system_event_model_t* instantiate_admin_system_event_model(int include_optional) {
  admin_system_event_model_t* admin_system_event_model = NULL;
  if (include_optional) {
    admin_system_event_model = admin_system_event_model_create(
      56,
      "2013-10-20T19:20:30+01:00",
      56,
      "0",
      "0",
      1,
      1,
      1,
      1,
      1,
      1
    );
  } else {
    admin_system_event_model = admin_system_event_model_create(
      56,
      "2013-10-20T19:20:30+01:00",
      56,
      "0",
      "0",
      1,
      1,
      1,
      1,
      1,
      1
    );
  }

  return admin_system_event_model;
}


#ifdef admin_system_event_model_MAIN

void test_admin_system_event_model(int include_optional) {
    admin_system_event_model_t* admin_system_event_model_1 = instantiate_admin_system_event_model(include_optional);

	cJSON* jsonadmin_system_event_model_1 = admin_system_event_model_convertToJSON(admin_system_event_model_1);
	printf("admin_system_event_model :\n%s\n", cJSON_Print(jsonadmin_system_event_model_1));
	admin_system_event_model_t* admin_system_event_model_2 = admin_system_event_model_parseFromJSON(jsonadmin_system_event_model_1);
	cJSON* jsonadmin_system_event_model_2 = admin_system_event_model_convertToJSON(admin_system_event_model_2);
	printf("repeating admin_system_event_model:\n%s\n", cJSON_Print(jsonadmin_system_event_model_2));
}

int main() {
  test_admin_system_event_model(1);
  test_admin_system_event_model(0);

  printf("Hello world \n");
  return 0;
}

#endif // admin_system_event_model_MAIN
#endif // admin_system_event_model_TEST
