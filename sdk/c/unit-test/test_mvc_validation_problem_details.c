#ifndef mvc_validation_problem_details_TEST
#define mvc_validation_problem_details_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define mvc_validation_problem_details_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/mvc_validation_problem_details.h"
mvc_validation_problem_details_t* instantiate_mvc_validation_problem_details(int include_optional);



mvc_validation_problem_details_t* instantiate_mvc_validation_problem_details(int include_optional) {
  mvc_validation_problem_details_t* mvc_validation_problem_details = NULL;
  if (include_optional) {
    mvc_validation_problem_details = mvc_validation_problem_details_create(
      "0",
      "0",
      56,
      "0",
      "0",
      list_createList()
    );
  } else {
    mvc_validation_problem_details = mvc_validation_problem_details_create(
      "0",
      "0",
      56,
      "0",
      "0",
      list_createList()
    );
  }

  return mvc_validation_problem_details;
}


#ifdef mvc_validation_problem_details_MAIN

void test_mvc_validation_problem_details(int include_optional) {
    mvc_validation_problem_details_t* mvc_validation_problem_details_1 = instantiate_mvc_validation_problem_details(include_optional);

	cJSON* jsonmvc_validation_problem_details_1 = mvc_validation_problem_details_convertToJSON(mvc_validation_problem_details_1);
	printf("mvc_validation_problem_details :\n%s\n", cJSON_Print(jsonmvc_validation_problem_details_1));
	mvc_validation_problem_details_t* mvc_validation_problem_details_2 = mvc_validation_problem_details_parseFromJSON(jsonmvc_validation_problem_details_1);
	cJSON* jsonmvc_validation_problem_details_2 = mvc_validation_problem_details_convertToJSON(mvc_validation_problem_details_2);
	printf("repeating mvc_validation_problem_details:\n%s\n", cJSON_Print(jsonmvc_validation_problem_details_2));
}

int main() {
  test_mvc_validation_problem_details(1);
  test_mvc_validation_problem_details(0);

  printf("Hello world \n");
  return 0;
}

#endif // mvc_validation_problem_details_MAIN
#endif // mvc_validation_problem_details_TEST
