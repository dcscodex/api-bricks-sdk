#ifndef metadata_exchange_TEST
#define metadata_exchange_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define metadata_exchange_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/metadata_exchange.h"
metadata_exchange_t* instantiate_metadata_exchange(int include_optional);



metadata_exchange_t* instantiate_metadata_exchange(int include_optional) {
  metadata_exchange_t* metadata_exchange = NULL;
  if (include_optional) {
    metadata_exchange = metadata_exchange_create(
      "0",
      "0",
      "0"
    );
  } else {
    metadata_exchange = metadata_exchange_create(
      "0",
      "0",
      "0"
    );
  }

  return metadata_exchange;
}


#ifdef metadata_exchange_MAIN

void test_metadata_exchange(int include_optional) {
    metadata_exchange_t* metadata_exchange_1 = instantiate_metadata_exchange(include_optional);

	cJSON* jsonmetadata_exchange_1 = metadata_exchange_convertToJSON(metadata_exchange_1);
	printf("metadata_exchange :\n%s\n", cJSON_Print(jsonmetadata_exchange_1));
	metadata_exchange_t* metadata_exchange_2 = metadata_exchange_parseFromJSON(jsonmetadata_exchange_1);
	cJSON* jsonmetadata_exchange_2 = metadata_exchange_convertToJSON(metadata_exchange_2);
	printf("repeating metadata_exchange:\n%s\n", cJSON_Print(jsonmetadata_exchange_2));
}

int main() {
  test_metadata_exchange(1);
  test_metadata_exchange(0);

  printf("Hello world \n");
  return 0;
}

#endif // metadata_exchange_MAIN
#endif // metadata_exchange_TEST
