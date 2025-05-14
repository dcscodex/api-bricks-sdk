#ifndef indexes_index_definition_snapshot_entry_TEST
#define indexes_index_definition_snapshot_entry_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define indexes_index_definition_snapshot_entry_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/indexes_index_definition_snapshot_entry.h"
indexes_index_definition_snapshot_entry_t* instantiate_indexes_index_definition_snapshot_entry(int include_optional);



indexes_index_definition_snapshot_entry_t* instantiate_indexes_index_definition_snapshot_entry(int include_optional) {
  indexes_index_definition_snapshot_entry_t* indexes_index_definition_snapshot_entry = NULL;
  if (include_optional) {
    indexes_index_definition_snapshot_entry = indexes_index_definition_snapshot_entry_create(
      "0",
      "2013-10-20T19:20:30+01:00",
      1.337
    );
  } else {
    indexes_index_definition_snapshot_entry = indexes_index_definition_snapshot_entry_create(
      "0",
      "2013-10-20T19:20:30+01:00",
      1.337
    );
  }

  return indexes_index_definition_snapshot_entry;
}


#ifdef indexes_index_definition_snapshot_entry_MAIN

void test_indexes_index_definition_snapshot_entry(int include_optional) {
    indexes_index_definition_snapshot_entry_t* indexes_index_definition_snapshot_entry_1 = instantiate_indexes_index_definition_snapshot_entry(include_optional);

	cJSON* jsonindexes_index_definition_snapshot_entry_1 = indexes_index_definition_snapshot_entry_convertToJSON(indexes_index_definition_snapshot_entry_1);
	printf("indexes_index_definition_snapshot_entry :\n%s\n", cJSON_Print(jsonindexes_index_definition_snapshot_entry_1));
	indexes_index_definition_snapshot_entry_t* indexes_index_definition_snapshot_entry_2 = indexes_index_definition_snapshot_entry_parseFromJSON(jsonindexes_index_definition_snapshot_entry_1);
	cJSON* jsonindexes_index_definition_snapshot_entry_2 = indexes_index_definition_snapshot_entry_convertToJSON(indexes_index_definition_snapshot_entry_2);
	printf("repeating indexes_index_definition_snapshot_entry:\n%s\n", cJSON_Print(jsonindexes_index_definition_snapshot_entry_2));
}

int main() {
  test_indexes_index_definition_snapshot_entry(1);
  test_indexes_index_definition_snapshot_entry(0);

  printf("Hello world \n");
  return 0;
}

#endif // indexes_index_definition_snapshot_entry_MAIN
#endif // indexes_index_definition_snapshot_entry_TEST
