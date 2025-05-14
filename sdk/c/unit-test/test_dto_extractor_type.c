#ifndef dto_extractor_type_TEST
#define dto_extractor_type_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define dto_extractor_type_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/dto_extractor_type.h"
dto_extractor_type_t* instantiate_dto_extractor_type(int include_optional);



dto_extractor_type_t* instantiate_dto_extractor_type(int include_optional) {
  dto_extractor_type_t* dto_extractor_type = NULL;
  if (include_optional) {
    dto_extractor_type = dto_extractor_type_create(
    );
  } else {
    dto_extractor_type = dto_extractor_type_create(
    );
  }

  return dto_extractor_type;
}


#ifdef dto_extractor_type_MAIN

void test_dto_extractor_type(int include_optional) {
    dto_extractor_type_t* dto_extractor_type_1 = instantiate_dto_extractor_type(include_optional);

	cJSON* jsondto_extractor_type_1 = dto_extractor_type_convertToJSON(dto_extractor_type_1);
	printf("dto_extractor_type :\n%s\n", cJSON_Print(jsondto_extractor_type_1));
	dto_extractor_type_t* dto_extractor_type_2 = dto_extractor_type_parseFromJSON(jsondto_extractor_type_1);
	cJSON* jsondto_extractor_type_2 = dto_extractor_type_convertToJSON(dto_extractor_type_2);
	printf("repeating dto_extractor_type:\n%s\n", cJSON_Print(jsondto_extractor_type_2));
}

int main() {
  test_dto_extractor_type(1);
  test_dto_extractor_type(0);

  printf("Hello world \n");
  return 0;
}

#endif // dto_extractor_type_MAIN
#endif // dto_extractor_type_TEST
