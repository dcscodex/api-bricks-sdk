#ifndef ohlcv_timeseries_item_TEST
#define ohlcv_timeseries_item_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ohlcv_timeseries_item_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ohlcv_timeseries_item.h"
ohlcv_timeseries_item_t* instantiate_ohlcv_timeseries_item(int include_optional);



ohlcv_timeseries_item_t* instantiate_ohlcv_timeseries_item(int include_optional) {
  ohlcv_timeseries_item_t* ohlcv_timeseries_item = NULL;
  if (include_optional) {
    ohlcv_timeseries_item = ohlcv_timeseries_item_create(
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
    ohlcv_timeseries_item = ohlcv_timeseries_item_create(
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

  return ohlcv_timeseries_item;
}


#ifdef ohlcv_timeseries_item_MAIN

void test_ohlcv_timeseries_item(int include_optional) {
    ohlcv_timeseries_item_t* ohlcv_timeseries_item_1 = instantiate_ohlcv_timeseries_item(include_optional);

	cJSON* jsonohlcv_timeseries_item_1 = ohlcv_timeseries_item_convertToJSON(ohlcv_timeseries_item_1);
	printf("ohlcv_timeseries_item :\n%s\n", cJSON_Print(jsonohlcv_timeseries_item_1));
	ohlcv_timeseries_item_t* ohlcv_timeseries_item_2 = ohlcv_timeseries_item_parseFromJSON(jsonohlcv_timeseries_item_1);
	cJSON* jsonohlcv_timeseries_item_2 = ohlcv_timeseries_item_convertToJSON(ohlcv_timeseries_item_2);
	printf("repeating ohlcv_timeseries_item:\n%s\n", cJSON_Print(jsonohlcv_timeseries_item_2));
}

int main() {
  test_ohlcv_timeseries_item(1);
  test_ohlcv_timeseries_item(0);

  printf("Hello world \n");
  return 0;
}

#endif // ohlcv_timeseries_item_MAIN
#endif // ohlcv_timeseries_item_TEST
