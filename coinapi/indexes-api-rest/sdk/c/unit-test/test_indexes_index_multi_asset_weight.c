#ifndef indexes_index_multi_asset_weight_TEST
#define indexes_index_multi_asset_weight_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define indexes_index_multi_asset_weight_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/indexes_index_multi_asset_weight.h"
indexes_index_multi_asset_weight_t* instantiate_indexes_index_multi_asset_weight(int include_optional);



indexes_index_multi_asset_weight_t* instantiate_indexes_index_multi_asset_weight(int include_optional) {
  indexes_index_multi_asset_weight_t* indexes_index_multi_asset_weight = NULL;
  if (include_optional) {
    indexes_index_multi_asset_weight = indexes_index_multi_asset_weight_create(
      "0",
      "0",
      1.337
    );
  } else {
    indexes_index_multi_asset_weight = indexes_index_multi_asset_weight_create(
      "0",
      "0",
      1.337
    );
  }

  return indexes_index_multi_asset_weight;
}


#ifdef indexes_index_multi_asset_weight_MAIN

void test_indexes_index_multi_asset_weight(int include_optional) {
    indexes_index_multi_asset_weight_t* indexes_index_multi_asset_weight_1 = instantiate_indexes_index_multi_asset_weight(include_optional);

	cJSON* jsonindexes_index_multi_asset_weight_1 = indexes_index_multi_asset_weight_convertToJSON(indexes_index_multi_asset_weight_1);
	printf("indexes_index_multi_asset_weight :\n%s\n", cJSON_Print(jsonindexes_index_multi_asset_weight_1));
	indexes_index_multi_asset_weight_t* indexes_index_multi_asset_weight_2 = indexes_index_multi_asset_weight_parseFromJSON(jsonindexes_index_multi_asset_weight_1);
	cJSON* jsonindexes_index_multi_asset_weight_2 = indexes_index_multi_asset_weight_convertToJSON(indexes_index_multi_asset_weight_2);
	printf("repeating indexes_index_multi_asset_weight:\n%s\n", cJSON_Print(jsonindexes_index_multi_asset_weight_2));
}

int main() {
  test_indexes_index_multi_asset_weight(1);
  test_indexes_index_multi_asset_weight(0);

  printf("Hello world \n");
  return 0;
}

#endif // indexes_index_multi_asset_weight_MAIN
#endif // indexes_index_multi_asset_weight_TEST
