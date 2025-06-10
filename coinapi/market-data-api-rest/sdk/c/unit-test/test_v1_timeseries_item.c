#ifndef v1_timeseries_item_TEST
#define v1_timeseries_item_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_timeseries_item_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_timeseries_item.h"
v1_timeseries_item_t* instantiate_v1_timeseries_item(int include_optional);



v1_timeseries_item_t* instantiate_v1_timeseries_item(int include_optional) {
  v1_timeseries_item_t* v1_timeseries_item = NULL;
  if (include_optional) {
    v1_timeseries_item = v1_timeseries_item_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      1.337,
      1.337,
      1.337,
      1.337,
      1.337,
      56
    );
  } else {
    v1_timeseries_item = v1_timeseries_item_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      1.337,
      1.337,
      1.337,
      1.337,
      1.337,
      56
    );
  }

  return v1_timeseries_item;
}


#ifdef v1_timeseries_item_MAIN

void test_v1_timeseries_item(int include_optional) {
    v1_timeseries_item_t* v1_timeseries_item_1 = instantiate_v1_timeseries_item(include_optional);

	cJSON* jsonv1_timeseries_item_1 = v1_timeseries_item_convertToJSON(v1_timeseries_item_1);
	printf("v1_timeseries_item :\n%s\n", cJSON_Print(jsonv1_timeseries_item_1));
	v1_timeseries_item_t* v1_timeseries_item_2 = v1_timeseries_item_parseFromJSON(jsonv1_timeseries_item_1);
	cJSON* jsonv1_timeseries_item_2 = v1_timeseries_item_convertToJSON(v1_timeseries_item_2);
	printf("repeating v1_timeseries_item:\n%s\n", cJSON_Print(jsonv1_timeseries_item_2));
}

int main() {
  test_v1_timeseries_item(1);
  test_v1_timeseries_item(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_timeseries_item_MAIN
#endif // v1_timeseries_item_TEST
