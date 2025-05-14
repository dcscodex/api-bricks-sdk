#ifndef admin_security_directory_model_TEST
#define admin_security_directory_model_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define admin_security_directory_model_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/admin_security_directory_model.h"
admin_security_directory_model_t* instantiate_admin_security_directory_model(int include_optional);



admin_security_directory_model_t* instantiate_admin_security_directory_model(int include_optional) {
  admin_security_directory_model_t* admin_security_directory_model = NULL;
  if (include_optional) {
    admin_security_directory_model = admin_security_directory_model_create(
      "0",
      56,
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      1.337,
      56,
      "0",
      "0",
      1,
      1,
      1
    );
  } else {
    admin_security_directory_model = admin_security_directory_model_create(
      "0",
      56,
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      1.337,
      56,
      "0",
      "0",
      1,
      1,
      1
    );
  }

  return admin_security_directory_model;
}


#ifdef admin_security_directory_model_MAIN

void test_admin_security_directory_model(int include_optional) {
    admin_security_directory_model_t* admin_security_directory_model_1 = instantiate_admin_security_directory_model(include_optional);

	cJSON* jsonadmin_security_directory_model_1 = admin_security_directory_model_convertToJSON(admin_security_directory_model_1);
	printf("admin_security_directory_model :\n%s\n", cJSON_Print(jsonadmin_security_directory_model_1));
	admin_security_directory_model_t* admin_security_directory_model_2 = admin_security_directory_model_parseFromJSON(jsonadmin_security_directory_model_1);
	cJSON* jsonadmin_security_directory_model_2 = admin_security_directory_model_convertToJSON(admin_security_directory_model_2);
	printf("repeating admin_security_directory_model:\n%s\n", cJSON_Print(jsonadmin_security_directory_model_2));
}

int main() {
  test_admin_security_directory_model(1);
  test_admin_security_directory_model(0);

  printf("Hello world \n");
  return 0;
}

#endif // admin_security_directory_model_MAIN
#endif // admin_security_directory_model_TEST
