#ifndef indexes_index_value_TEST
#define indexes_index_value_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define indexes_index_value_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/indexes_index_value.h"
indexes_index_value_t* instantiate_indexes_index_value(int include_optional);



indexes_index_value_t* instantiate_indexes_index_value(int include_optional) {
  indexes_index_value_t* indexes_index_value = NULL;
  if (include_optional) {
    indexes_index_value = indexes_index_value_create(
      "2013-10-20T19:20:30+01:00",
      1.337,
      list_createList()
    );
  } else {
    indexes_index_value = indexes_index_value_create(
      "2013-10-20T19:20:30+01:00",
      1.337,
      list_createList()
    );
  }

  return indexes_index_value;
}


#ifdef indexes_index_value_MAIN

void test_indexes_index_value(int include_optional) {
    indexes_index_value_t* indexes_index_value_1 = instantiate_indexes_index_value(include_optional);

	cJSON* jsonindexes_index_value_1 = indexes_index_value_convertToJSON(indexes_index_value_1);
	printf("indexes_index_value :\n%s\n", cJSON_Print(jsonindexes_index_value_1));
	indexes_index_value_t* indexes_index_value_2 = indexes_index_value_parseFromJSON(jsonindexes_index_value_1);
	cJSON* jsonindexes_index_value_2 = indexes_index_value_convertToJSON(indexes_index_value_2);
	printf("repeating indexes_index_value:\n%s\n", cJSON_Print(jsonindexes_index_value_2));
}

int main() {
  test_indexes_index_value(1);
  test_indexes_index_value(0);

  printf("Hello world \n");
  return 0;
}

#endif // indexes_index_value_MAIN
#endif // indexes_index_value_TEST
