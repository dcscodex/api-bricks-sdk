#ifndef dto_sec_filing_result_dto_TEST
#define dto_sec_filing_result_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define dto_sec_filing_result_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/dto_sec_filing_result_dto.h"
dto_sec_filing_result_dto_t* instantiate_dto_sec_filing_result_dto(int include_optional);



dto_sec_filing_result_dto_t* instantiate_dto_sec_filing_result_dto(int include_optional) {
  dto_sec_filing_result_dto_t* dto_sec_filing_result_dto = NULL;
  if (include_optional) {
    dto_sec_filing_result_dto = dto_sec_filing_result_dto_create(
      "0",
      "0",
      "2013-10-20",
      "0",
      56,
      "0",
      "0",
      "0"
    );
  } else {
    dto_sec_filing_result_dto = dto_sec_filing_result_dto_create(
      "0",
      "0",
      "2013-10-20",
      "0",
      56,
      "0",
      "0",
      "0"
    );
  }

  return dto_sec_filing_result_dto;
}


#ifdef dto_sec_filing_result_dto_MAIN

void test_dto_sec_filing_result_dto(int include_optional) {
    dto_sec_filing_result_dto_t* dto_sec_filing_result_dto_1 = instantiate_dto_sec_filing_result_dto(include_optional);

	cJSON* jsondto_sec_filing_result_dto_1 = dto_sec_filing_result_dto_convertToJSON(dto_sec_filing_result_dto_1);
	printf("dto_sec_filing_result_dto :\n%s\n", cJSON_Print(jsondto_sec_filing_result_dto_1));
	dto_sec_filing_result_dto_t* dto_sec_filing_result_dto_2 = dto_sec_filing_result_dto_parseFromJSON(jsondto_sec_filing_result_dto_1);
	cJSON* jsondto_sec_filing_result_dto_2 = dto_sec_filing_result_dto_convertToJSON(dto_sec_filing_result_dto_2);
	printf("repeating dto_sec_filing_result_dto:\n%s\n", cJSON_Print(jsondto_sec_filing_result_dto_2));
}

int main() {
  test_dto_sec_filing_result_dto(1);
  test_dto_sec_filing_result_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // dto_sec_filing_result_dto_MAIN
#endif // dto_sec_filing_result_dto_TEST
