#ifndef ohlcv_timeseries_period_TEST
#define ohlcv_timeseries_period_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ohlcv_timeseries_period_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ohlcv_timeseries_period.h"
ohlcv_timeseries_period_t* instantiate_ohlcv_timeseries_period(int include_optional);



ohlcv_timeseries_period_t* instantiate_ohlcv_timeseries_period(int include_optional) {
  ohlcv_timeseries_period_t* ohlcv_timeseries_period = NULL;
  if (include_optional) {
    ohlcv_timeseries_period = ohlcv_timeseries_period_create(
      "0",
      56,
      56,
      56,
      "0",
      "0"
    );
  } else {
    ohlcv_timeseries_period = ohlcv_timeseries_period_create(
      "0",
      56,
      56,
      56,
      "0",
      "0"
    );
  }

  return ohlcv_timeseries_period;
}


#ifdef ohlcv_timeseries_period_MAIN

void test_ohlcv_timeseries_period(int include_optional) {
    ohlcv_timeseries_period_t* ohlcv_timeseries_period_1 = instantiate_ohlcv_timeseries_period(include_optional);

	cJSON* jsonohlcv_timeseries_period_1 = ohlcv_timeseries_period_convertToJSON(ohlcv_timeseries_period_1);
	printf("ohlcv_timeseries_period :\n%s\n", cJSON_Print(jsonohlcv_timeseries_period_1));
	ohlcv_timeseries_period_t* ohlcv_timeseries_period_2 = ohlcv_timeseries_period_parseFromJSON(jsonohlcv_timeseries_period_1);
	cJSON* jsonohlcv_timeseries_period_2 = ohlcv_timeseries_period_convertToJSON(ohlcv_timeseries_period_2);
	printf("repeating ohlcv_timeseries_period:\n%s\n", cJSON_Print(jsonohlcv_timeseries_period_2));
}

int main() {
  test_ohlcv_timeseries_period(1);
  test_ohlcv_timeseries_period(0);

  printf("Hello world \n");
  return 0;
}

#endif // ohlcv_timeseries_period_MAIN
#endif // ohlcv_timeseries_period_TEST
