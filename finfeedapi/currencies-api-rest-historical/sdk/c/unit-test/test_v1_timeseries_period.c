#ifndef v1_timeseries_period_TEST
#define v1_timeseries_period_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_timeseries_period_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_timeseries_period.h"
v1_timeseries_period_t* instantiate_v1_timeseries_period(int include_optional);



v1_timeseries_period_t* instantiate_v1_timeseries_period(int include_optional) {
  v1_timeseries_period_t* v1_timeseries_period = NULL;
  if (include_optional) {
    v1_timeseries_period = v1_timeseries_period_create(
      "0",
      56,
      56,
      56,
      "0",
      "0"
    );
  } else {
    v1_timeseries_period = v1_timeseries_period_create(
      "0",
      56,
      56,
      56,
      "0",
      "0"
    );
  }

  return v1_timeseries_period;
}


#ifdef v1_timeseries_period_MAIN

void test_v1_timeseries_period(int include_optional) {
    v1_timeseries_period_t* v1_timeseries_period_1 = instantiate_v1_timeseries_period(include_optional);

	cJSON* jsonv1_timeseries_period_1 = v1_timeseries_period_convertToJSON(v1_timeseries_period_1);
	printf("v1_timeseries_period :\n%s\n", cJSON_Print(jsonv1_timeseries_period_1));
	v1_timeseries_period_t* v1_timeseries_period_2 = v1_timeseries_period_parseFromJSON(jsonv1_timeseries_period_1);
	cJSON* jsonv1_timeseries_period_2 = v1_timeseries_period_convertToJSON(v1_timeseries_period_2);
	printf("repeating v1_timeseries_period:\n%s\n", cJSON_Print(jsonv1_timeseries_period_2));
}

int main() {
  test_v1_timeseries_period(1);
  test_v1_timeseries_period(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_timeseries_period_MAIN
#endif // v1_timeseries_period_TEST
