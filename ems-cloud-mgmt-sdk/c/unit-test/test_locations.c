#ifndef locations_TEST
#define locations_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define locations_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/locations.h"
locations_t* instantiate_locations(int include_optional);



locations_t* instantiate_locations(int include_optional) {
  locations_t* locations = NULL;
  if (include_optional) {
    locations = locations_create(
      "aws-us-east-1",
      "us-east-1",
      "aws"
    );
  } else {
    locations = locations_create(
      "aws-us-east-1",
      "us-east-1",
      "aws"
    );
  }

  return locations;
}


#ifdef locations_MAIN

void test_locations(int include_optional) {
    locations_t* locations_1 = instantiate_locations(include_optional);

	cJSON* jsonlocations_1 = locations_convertToJSON(locations_1);
	printf("locations :\n%s\n", cJSON_Print(jsonlocations_1));
	locations_t* locations_2 = locations_parseFromJSON(jsonlocations_1);
	cJSON* jsonlocations_2 = locations_convertToJSON(locations_2);
	printf("repeating locations:\n%s\n", cJSON_Print(jsonlocations_2));
}

int main() {
  test_locations(1);
  test_locations(0);

  printf("Hello world \n");
  return 0;
}

#endif // locations_MAIN
#endif // locations_TEST
