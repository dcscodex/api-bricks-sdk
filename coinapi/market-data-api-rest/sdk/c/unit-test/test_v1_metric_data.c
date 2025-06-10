#ifndef v1_metric_data_TEST
#define v1_metric_data_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_metric_data_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_metric_data.h"
v1_metric_data_t* instantiate_v1_metric_data(int include_optional);



v1_metric_data_t* instantiate_v1_metric_data(int include_optional) {
  v1_metric_data_t* v1_metric_data = NULL;
  if (include_optional) {
    v1_metric_data = v1_metric_data_create(
      "0",
      "2013-10-20T19:20:30+01:00",
      1.337
    );
  } else {
    v1_metric_data = v1_metric_data_create(
      "0",
      "2013-10-20T19:20:30+01:00",
      1.337
    );
  }

  return v1_metric_data;
}


#ifdef v1_metric_data_MAIN

void test_v1_metric_data(int include_optional) {
    v1_metric_data_t* v1_metric_data_1 = instantiate_v1_metric_data(include_optional);

	cJSON* jsonv1_metric_data_1 = v1_metric_data_convertToJSON(v1_metric_data_1);
	printf("v1_metric_data :\n%s\n", cJSON_Print(jsonv1_metric_data_1));
	v1_metric_data_t* v1_metric_data_2 = v1_metric_data_parseFromJSON(jsonv1_metric_data_1);
	cJSON* jsonv1_metric_data_2 = v1_metric_data_convertToJSON(v1_metric_data_2);
	printf("repeating v1_metric_data:\n%s\n", cJSON_Print(jsonv1_metric_data_2));
}

int main() {
  test_v1_metric_data(1);
  test_v1_metric_data(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_metric_data_MAIN
#endif // v1_metric_data_TEST
