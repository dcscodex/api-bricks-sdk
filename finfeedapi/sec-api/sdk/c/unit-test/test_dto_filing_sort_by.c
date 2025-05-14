#ifndef dto_filing_sort_by_TEST
#define dto_filing_sort_by_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define dto_filing_sort_by_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/dto_filing_sort_by.h"
dto_filing_sort_by_t* instantiate_dto_filing_sort_by(int include_optional);



dto_filing_sort_by_t* instantiate_dto_filing_sort_by(int include_optional) {
  dto_filing_sort_by_t* dto_filing_sort_by = NULL;
  if (include_optional) {
    dto_filing_sort_by = dto_filing_sort_by_create(
    );
  } else {
    dto_filing_sort_by = dto_filing_sort_by_create(
    );
  }

  return dto_filing_sort_by;
}


#ifdef dto_filing_sort_by_MAIN

void test_dto_filing_sort_by(int include_optional) {
    dto_filing_sort_by_t* dto_filing_sort_by_1 = instantiate_dto_filing_sort_by(include_optional);

	cJSON* jsondto_filing_sort_by_1 = dto_filing_sort_by_convertToJSON(dto_filing_sort_by_1);
	printf("dto_filing_sort_by :\n%s\n", cJSON_Print(jsondto_filing_sort_by_1));
	dto_filing_sort_by_t* dto_filing_sort_by_2 = dto_filing_sort_by_parseFromJSON(jsondto_filing_sort_by_1);
	cJSON* jsondto_filing_sort_by_2 = dto_filing_sort_by_convertToJSON(dto_filing_sort_by_2);
	printf("repeating dto_filing_sort_by:\n%s\n", cJSON_Print(jsondto_filing_sort_by_2));
}

int main() {
  test_dto_filing_sort_by(1);
  test_dto_filing_sort_by(0);

  printf("Hello world \n");
  return 0;
}

#endif // dto_filing_sort_by_MAIN
#endif // dto_filing_sort_by_TEST
