#ifndef indexes_index_definition_input_data_TEST
#define indexes_index_definition_input_data_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define indexes_index_definition_input_data_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/indexes_index_definition_input_data.h"
indexes_index_definition_input_data_t* instantiate_indexes_index_definition_input_data(int include_optional);



indexes_index_definition_input_data_t* instantiate_indexes_index_definition_input_data(int include_optional) {
  indexes_index_definition_input_data_t* indexes_index_definition_input_data = NULL;
  if (include_optional) {
    indexes_index_definition_input_data = indexes_index_definition_input_data_create(
      "0",
      "0",
      "0",
      "0",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "0",
      "0",
      "2013-10-20T19:20:30+01:00"
    );
  } else {
    indexes_index_definition_input_data = indexes_index_definition_input_data_create(
      "0",
      "0",
      "0",
      "0",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "0",
      "0",
      "2013-10-20T19:20:30+01:00"
    );
  }

  return indexes_index_definition_input_data;
}


#ifdef indexes_index_definition_input_data_MAIN

void test_indexes_index_definition_input_data(int include_optional) {
    indexes_index_definition_input_data_t* indexes_index_definition_input_data_1 = instantiate_indexes_index_definition_input_data(include_optional);

	cJSON* jsonindexes_index_definition_input_data_1 = indexes_index_definition_input_data_convertToJSON(indexes_index_definition_input_data_1);
	printf("indexes_index_definition_input_data :\n%s\n", cJSON_Print(jsonindexes_index_definition_input_data_1));
	indexes_index_definition_input_data_t* indexes_index_definition_input_data_2 = indexes_index_definition_input_data_parseFromJSON(jsonindexes_index_definition_input_data_1);
	cJSON* jsonindexes_index_definition_input_data_2 = indexes_index_definition_input_data_convertToJSON(indexes_index_definition_input_data_2);
	printf("repeating indexes_index_definition_input_data:\n%s\n", cJSON_Print(jsonindexes_index_definition_input_data_2));
}

int main() {
  test_indexes_index_definition_input_data(1);
  test_indexes_index_definition_input_data(0);

  printf("Hello world \n");
  return 0;
}

#endif // indexes_index_definition_input_data_MAIN
#endif // indexes_index_definition_input_data_TEST
