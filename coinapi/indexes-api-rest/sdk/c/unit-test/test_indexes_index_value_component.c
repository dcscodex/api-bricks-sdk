#ifndef indexes_index_value_component_TEST
#define indexes_index_value_component_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define indexes_index_value_component_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/indexes_index_value_component.h"
indexes_index_value_component_t* instantiate_indexes_index_value_component(int include_optional);



indexes_index_value_component_t* instantiate_indexes_index_value_component(int include_optional) {
  indexes_index_value_component_t* indexes_index_value_component = NULL;
  if (include_optional) {
    indexes_index_value_component = indexes_index_value_component_create(
      "0",
      1.337
    );
  } else {
    indexes_index_value_component = indexes_index_value_component_create(
      "0",
      1.337
    );
  }

  return indexes_index_value_component;
}


#ifdef indexes_index_value_component_MAIN

void test_indexes_index_value_component(int include_optional) {
    indexes_index_value_component_t* indexes_index_value_component_1 = instantiate_indexes_index_value_component(include_optional);

	cJSON* jsonindexes_index_value_component_1 = indexes_index_value_component_convertToJSON(indexes_index_value_component_1);
	printf("indexes_index_value_component :\n%s\n", cJSON_Print(jsonindexes_index_value_component_1));
	indexes_index_value_component_t* indexes_index_value_component_2 = indexes_index_value_component_parseFromJSON(jsonindexes_index_value_component_1);
	cJSON* jsonindexes_index_value_component_2 = indexes_index_value_component_convertToJSON(indexes_index_value_component_2);
	printf("repeating indexes_index_value_component:\n%s\n", cJSON_Print(jsonindexes_index_value_component_2));
}

int main() {
  test_indexes_index_value_component(1);
  test_indexes_index_value_component(0);

  printf("Hello world \n");
  return 0;
}

#endif // indexes_index_value_component_MAIN
#endif // indexes_index_value_component_TEST
