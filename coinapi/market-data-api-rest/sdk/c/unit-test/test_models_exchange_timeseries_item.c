#ifndef models_exchange_timeseries_item_TEST
#define models_exchange_timeseries_item_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define models_exchange_timeseries_item_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/models_exchange_timeseries_item.h"
models_exchange_timeseries_item_t* instantiate_models_exchange_timeseries_item(int include_optional);



models_exchange_timeseries_item_t* instantiate_models_exchange_timeseries_item(int include_optional) {
  models_exchange_timeseries_item_t* models_exchange_timeseries_item = NULL;
  if (include_optional) {
    models_exchange_timeseries_item = models_exchange_timeseries_item_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      1.337,
      1.337,
      1.337,
      1.337,
      1.337,
      56,
      "0",
      "0"
    );
  } else {
    models_exchange_timeseries_item = models_exchange_timeseries_item_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      1.337,
      1.337,
      1.337,
      1.337,
      1.337,
      56,
      "0",
      "0"
    );
  }

  return models_exchange_timeseries_item;
}


#ifdef models_exchange_timeseries_item_MAIN

void test_models_exchange_timeseries_item(int include_optional) {
    models_exchange_timeseries_item_t* models_exchange_timeseries_item_1 = instantiate_models_exchange_timeseries_item(include_optional);

	cJSON* jsonmodels_exchange_timeseries_item_1 = models_exchange_timeseries_item_convertToJSON(models_exchange_timeseries_item_1);
	printf("models_exchange_timeseries_item :\n%s\n", cJSON_Print(jsonmodels_exchange_timeseries_item_1));
	models_exchange_timeseries_item_t* models_exchange_timeseries_item_2 = models_exchange_timeseries_item_parseFromJSON(jsonmodels_exchange_timeseries_item_1);
	cJSON* jsonmodels_exchange_timeseries_item_2 = models_exchange_timeseries_item_convertToJSON(models_exchange_timeseries_item_2);
	printf("repeating models_exchange_timeseries_item:\n%s\n", cJSON_Print(jsonmodels_exchange_timeseries_item_2));
}

int main() {
  test_models_exchange_timeseries_item(1);
  test_models_exchange_timeseries_item(0);

  printf("Hello world \n");
  return 0;
}

#endif // models_exchange_timeseries_item_MAIN
#endif // models_exchange_timeseries_item_TEST
