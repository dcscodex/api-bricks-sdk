#ifndef indexes_index_timeseries_item_TEST
#define indexes_index_timeseries_item_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define indexes_index_timeseries_item_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/indexes_index_timeseries_item.h"
indexes_index_timeseries_item_t* instantiate_indexes_index_timeseries_item(int include_optional);



indexes_index_timeseries_item_t* instantiate_indexes_index_timeseries_item(int include_optional) {
  indexes_index_timeseries_item_t* indexes_index_timeseries_item = NULL;
  if (include_optional) {
    indexes_index_timeseries_item = indexes_index_timeseries_item_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      1.337,
      1.337,
      1.337,
      1.337,
      56
    );
  } else {
    indexes_index_timeseries_item = indexes_index_timeseries_item_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      1.337,
      1.337,
      1.337,
      1.337,
      56
    );
  }

  return indexes_index_timeseries_item;
}


#ifdef indexes_index_timeseries_item_MAIN

void test_indexes_index_timeseries_item(int include_optional) {
    indexes_index_timeseries_item_t* indexes_index_timeseries_item_1 = instantiate_indexes_index_timeseries_item(include_optional);

	cJSON* jsonindexes_index_timeseries_item_1 = indexes_index_timeseries_item_convertToJSON(indexes_index_timeseries_item_1);
	printf("indexes_index_timeseries_item :\n%s\n", cJSON_Print(jsonindexes_index_timeseries_item_1));
	indexes_index_timeseries_item_t* indexes_index_timeseries_item_2 = indexes_index_timeseries_item_parseFromJSON(jsonindexes_index_timeseries_item_1);
	cJSON* jsonindexes_index_timeseries_item_2 = indexes_index_timeseries_item_convertToJSON(indexes_index_timeseries_item_2);
	printf("repeating indexes_index_timeseries_item:\n%s\n", cJSON_Print(jsonindexes_index_timeseries_item_2));
}

int main() {
  test_indexes_index_timeseries_item(1);
  test_indexes_index_timeseries_item(0);

  printf("Hello world \n");
  return 0;
}

#endif // indexes_index_timeseries_item_MAIN
#endif // indexes_index_timeseries_item_TEST
