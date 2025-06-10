#ifndef v1_metric_TEST
#define v1_metric_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_metric_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_metric.h"
v1_metric_t* instantiate_v1_metric(int include_optional);



v1_metric_t* instantiate_v1_metric(int include_optional) {
  v1_metric_t* v1_metric = NULL;
  if (include_optional) {
    v1_metric = v1_metric_create(
      "0",
      "0"
    );
  } else {
    v1_metric = v1_metric_create(
      "0",
      "0"
    );
  }

  return v1_metric;
}


#ifdef v1_metric_MAIN

void test_v1_metric(int include_optional) {
    v1_metric_t* v1_metric_1 = instantiate_v1_metric(include_optional);

	cJSON* jsonv1_metric_1 = v1_metric_convertToJSON(v1_metric_1);
	printf("v1_metric :\n%s\n", cJSON_Print(jsonv1_metric_1));
	v1_metric_t* v1_metric_2 = v1_metric_parseFromJSON(jsonv1_metric_1);
	cJSON* jsonv1_metric_2 = v1_metric_convertToJSON(v1_metric_2);
	printf("repeating v1_metric:\n%s\n", cJSON_Print(jsonv1_metric_2));
}

int main() {
  test_v1_metric(1);
  test_v1_metric(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_metric_MAIN
#endif // v1_metric_TEST
