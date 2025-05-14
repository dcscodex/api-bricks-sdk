#ifndef dto_filing_metadata_dto_TEST
#define dto_filing_metadata_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define dto_filing_metadata_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/dto_filing_metadata_dto.h"
dto_filing_metadata_dto_t* instantiate_dto_filing_metadata_dto(int include_optional);



dto_filing_metadata_dto_t* instantiate_dto_filing_metadata_dto(int include_optional) {
  dto_filing_metadata_dto_t* dto_filing_metadata_dto = NULL;
  if (include_optional) {
    dto_filing_metadata_dto = dto_filing_metadata_dto_create(
      56,
      "0",
      "2013-10-20",
      "2013-10-20",
      "2013-10-20T19:20:30+01:00",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      56,
      1,
      1,
      "0",
      "0",
      "0"
    );
  } else {
    dto_filing_metadata_dto = dto_filing_metadata_dto_create(
      56,
      "0",
      "2013-10-20",
      "2013-10-20",
      "2013-10-20T19:20:30+01:00",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      56,
      1,
      1,
      "0",
      "0",
      "0"
    );
  }

  return dto_filing_metadata_dto;
}


#ifdef dto_filing_metadata_dto_MAIN

void test_dto_filing_metadata_dto(int include_optional) {
    dto_filing_metadata_dto_t* dto_filing_metadata_dto_1 = instantiate_dto_filing_metadata_dto(include_optional);

	cJSON* jsondto_filing_metadata_dto_1 = dto_filing_metadata_dto_convertToJSON(dto_filing_metadata_dto_1);
	printf("dto_filing_metadata_dto :\n%s\n", cJSON_Print(jsondto_filing_metadata_dto_1));
	dto_filing_metadata_dto_t* dto_filing_metadata_dto_2 = dto_filing_metadata_dto_parseFromJSON(jsondto_filing_metadata_dto_1);
	cJSON* jsondto_filing_metadata_dto_2 = dto_filing_metadata_dto_convertToJSON(dto_filing_metadata_dto_2);
	printf("repeating dto_filing_metadata_dto:\n%s\n", cJSON_Print(jsondto_filing_metadata_dto_2));
}

int main() {
  test_dto_filing_metadata_dto(1);
  test_dto_filing_metadata_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // dto_filing_metadata_dto_MAIN
#endif // dto_filing_metadata_dto_TEST
