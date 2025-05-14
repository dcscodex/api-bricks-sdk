#ifndef indexes_index_identifier_TEST
#define indexes_index_identifier_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define indexes_index_identifier_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/indexes_index_identifier.h"
indexes_index_identifier_t* instantiate_indexes_index_identifier(int include_optional);



indexes_index_identifier_t* instantiate_indexes_index_identifier(int include_optional) {
  indexes_index_identifier_t* indexes_index_identifier = NULL;
  if (include_optional) {
    indexes_index_identifier = indexes_index_identifier_create(
      "0"
    );
  } else {
    indexes_index_identifier = indexes_index_identifier_create(
      "0"
    );
  }

  return indexes_index_identifier;
}


#ifdef indexes_index_identifier_MAIN

void test_indexes_index_identifier(int include_optional) {
    indexes_index_identifier_t* indexes_index_identifier_1 = instantiate_indexes_index_identifier(include_optional);

	cJSON* jsonindexes_index_identifier_1 = indexes_index_identifier_convertToJSON(indexes_index_identifier_1);
	printf("indexes_index_identifier :\n%s\n", cJSON_Print(jsonindexes_index_identifier_1));
	indexes_index_identifier_t* indexes_index_identifier_2 = indexes_index_identifier_parseFromJSON(jsonindexes_index_identifier_1);
	cJSON* jsonindexes_index_identifier_2 = indexes_index_identifier_convertToJSON(indexes_index_identifier_2);
	printf("repeating indexes_index_identifier:\n%s\n", cJSON_Print(jsonindexes_index_identifier_2));
}

int main() {
  test_indexes_index_identifier(1);
  test_indexes_index_identifier(0);

  printf("Hello world \n");
  return 0;
}

#endif // indexes_index_identifier_MAIN
#endif // indexes_index_identifier_TEST
