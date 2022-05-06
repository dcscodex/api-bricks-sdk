#ifndef account_info_TEST
#define account_info_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define account_info_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/account_info.h"
account_info_t* instantiate_account_info(int include_optional);



account_info_t* instantiate_account_info(int include_optional) {
  account_info_t* account_info = NULL;
  if (include_optional) {
    account_info = account_info_create(
      "0"
    );
  } else {
    account_info = account_info_create(
      "0"
    );
  }

  return account_info;
}


#ifdef account_info_MAIN

void test_account_info(int include_optional) {
    account_info_t* account_info_1 = instantiate_account_info(include_optional);

	cJSON* jsonaccount_info_1 = account_info_convertToJSON(account_info_1);
	printf("account_info :\n%s\n", cJSON_Print(jsonaccount_info_1));
	account_info_t* account_info_2 = account_info_parseFromJSON(jsonaccount_info_1);
	cJSON* jsonaccount_info_2 = account_info_convertToJSON(account_info_2);
	printf("repeating account_info:\n%s\n", cJSON_Print(jsonaccount_info_2));
}

int main() {
  test_account_info(1);
  test_account_info(0);

  printf("Hello world \n");
  return 0;
}

#endif // account_info_MAIN
#endif // account_info_TEST
