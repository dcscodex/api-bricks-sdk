#ifndef metadata_timeseries_period_TEST
#define metadata_timeseries_period_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define metadata_timeseries_period_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/metadata_timeseries_period.h"
metadata_timeseries_period_t* instantiate_metadata_timeseries_period(int include_optional);



metadata_timeseries_period_t* instantiate_metadata_timeseries_period(int include_optional) {
  metadata_timeseries_period_t* metadata_timeseries_period = NULL;
  if (include_optional) {
    metadata_timeseries_period = metadata_timeseries_period_create(
      "0",
      56,
      56,
      56,
      "0",
      "0"
    );
  } else {
    metadata_timeseries_period = metadata_timeseries_period_create(
      "0",
      56,
      56,
      56,
      "0",
      "0"
    );
  }

  return metadata_timeseries_period;
}


#ifdef metadata_timeseries_period_MAIN

void test_metadata_timeseries_period(int include_optional) {
    metadata_timeseries_period_t* metadata_timeseries_period_1 = instantiate_metadata_timeseries_period(include_optional);

	cJSON* jsonmetadata_timeseries_period_1 = metadata_timeseries_period_convertToJSON(metadata_timeseries_period_1);
	printf("metadata_timeseries_period :\n%s\n", cJSON_Print(jsonmetadata_timeseries_period_1));
	metadata_timeseries_period_t* metadata_timeseries_period_2 = metadata_timeseries_period_parseFromJSON(jsonmetadata_timeseries_period_1);
	cJSON* jsonmetadata_timeseries_period_2 = metadata_timeseries_period_convertToJSON(metadata_timeseries_period_2);
	printf("repeating metadata_timeseries_period:\n%s\n", cJSON_Print(jsonmetadata_timeseries_period_2));
}

int main() {
  test_metadata_timeseries_period(1);
  test_metadata_timeseries_period(0);

  printf("Hello world \n");
  return 0;
}

#endif // metadata_timeseries_period_MAIN
#endif // metadata_timeseries_period_TEST
