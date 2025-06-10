#ifndef v1_general_data_TEST
#define v1_general_data_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_general_data_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_general_data.h"
v1_general_data_t* instantiate_v1_general_data(int include_optional);



v1_general_data_t* instantiate_v1_general_data(int include_optional) {
  v1_general_data_t* v1_general_data = NULL;
  if (include_optional) {
    v1_general_data = v1_general_data_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "0",
      "0",
      "0",
      "0",
      1.337,
      "0",
      "2013-10-20T19:20:30+01:00"
    );
  } else {
    v1_general_data = v1_general_data_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "0",
      "0",
      "0",
      "0",
      1.337,
      "0",
      "2013-10-20T19:20:30+01:00"
    );
  }

  return v1_general_data;
}


#ifdef v1_general_data_MAIN

void test_v1_general_data(int include_optional) {
    v1_general_data_t* v1_general_data_1 = instantiate_v1_general_data(include_optional);

	cJSON* jsonv1_general_data_1 = v1_general_data_convertToJSON(v1_general_data_1);
	printf("v1_general_data :\n%s\n", cJSON_Print(jsonv1_general_data_1));
	v1_general_data_t* v1_general_data_2 = v1_general_data_parseFromJSON(jsonv1_general_data_1);
	cJSON* jsonv1_general_data_2 = v1_general_data_convertToJSON(v1_general_data_2);
	printf("repeating v1_general_data:\n%s\n", cJSON_Print(jsonv1_general_data_2));
}

int main() {
  test_v1_general_data(1);
  test_v1_general_data(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_general_data_MAIN
#endif // v1_general_data_TEST
